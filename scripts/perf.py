# uv run scripts/perf.py

import os
import sys
import argparse
import shutil
import resource
import subprocess
import multiprocessing
import tempfile
import time
from pathlib import Path
from typing import List, Tuple, Optional
import huggingface_hub
from tenacity import retry, stop_after_attempt, wait_exponential_jitter
from tqdm import tqdm

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
LLVM_REPO = os.path.join(ROOT_DIR, "work", "llvm-project")
LLVM_REPO_URL = "https://github.com/llvm/llvm-project.git"
DATA_DIR = os.path.join(ROOT_DIR, "data")
HF_URL = "hf://buckets/llvm-opt-benchmark/llvm-opt-benchmark"

PERF_BUILD_DIR = os.path.join(ROOT_DIR, "work", "perf-llvm-build")
PERF_OPT_BINARY = os.path.join(PERF_BUILD_DIR, "bin", "opt")
PERF_REPORT_DIR = os.path.join(ROOT_DIR, "work", "perf-report")

RUN_PERF_TIME_BUDGET_SECONDS = 120 * 60


@retry(stop=stop_after_attempt(5), wait=wait_exponential_jitter(initial=1, max=10))
def sync_dataset_from_remote():
    plan_file = os.path.join(ROOT_DIR, "work/sync-plan.jsonl")
    huggingface_hub.sync_bucket(
        HF_URL, DATA_DIR, delete=True, plan=plan_file, quiet=True
    )
    huggingface_hub.sync_bucket(apply=plan_file)


@retry(stop=stop_after_attempt(5), wait=wait_exponential_jitter(initial=1, max=10))
def setup_llvm(revision: str):
    if not os.path.exists(LLVM_REPO):
        subprocess.check_call(["git", "clone", LLVM_REPO_URL, LLVM_REPO])
    subprocess.check_call(["git", "reset", "HEAD"], cwd=LLVM_REPO)
    subprocess.check_call(["git", "checkout", "."], cwd=LLVM_REPO)
    subprocess.check_call(["git", "clean", "-fdx"], cwd=LLVM_REPO)
    subprocess.check_call(["git", "fetch"], cwd=LLVM_REPO)
    subprocess.check_call(["git", "checkout", revision], cwd=LLVM_REPO)


def list_dataset_bc_tasks() -> List[Tuple[str, str]]:
    tasks = []
    for proj in os.listdir(DATA_DIR):
        original_dir = os.path.join(DATA_DIR, proj, "original")
        if not os.path.exists(original_dir):
            continue
        for file in os.listdir(original_dir):
            if file.endswith(".bc"):
                tasks.append((proj, file))
    return tasks


def _disable_core_dumps():
    resource.setrlimit(resource.RLIMIT_CORE, (0, 0))


def _remaining_time_seconds(deadline: Optional[float]) -> Optional[float]:
    if deadline is None:
        return None
    return deadline - time.monotonic()


def _bounded_timeout(seconds: float, deadline: Optional[float]) -> float:
    remaining = _remaining_time_seconds(deadline)
    if remaining is None:
        return seconds
    return min(seconds, max(0.0, remaining))


def build_opt() -> bool:
    try:
        if os.path.exists(PERF_BUILD_DIR):
            shutil.rmtree(PERF_BUILD_DIR)
        os.makedirs(PERF_BUILD_DIR)
        cmd = [
            "cmake",
            "-S",
            f"{LLVM_REPO}/llvm",
            "-DCMAKE_BUILD_TYPE=RelWithDebInfo",
            "-G",
            "Ninja",
            "-DLLVM_INCLUDE_EXAMPLES=OFF",
            "-DLLVM_OPTIMIZED_TABLEGEN=ON",
            "-DLLVM_ENABLE_WARNINGS=OFF",
            "-DLLVM_APPEND_VC_REV=OFF",
            "-DLLVM_TARGETS_TO_BUILD=X86",
            "-DLLVM_ENABLE_ASSERTIONS=OFF",
            "-DCMAKE_C_COMPILER=clang",
            "-DCMAKE_CXX_COMPILER=clang++",
            "-DCMAKE_C_COMPILER_LAUNCHER=ccache",
            "-DCMAKE_CXX_COMPILER_LAUNCHER=ccache",
            "-DCMAKE_C_FLAGS=-fno-omit-frame-pointer",
            "-DCMAKE_CXX_FLAGS=-fno-omit-frame-pointer",
        ]
        subprocess.check_call(cmd, cwd=PERF_BUILD_DIR)
        subprocess.check_call(
            ["cmake", "--build", ".", "-j", "-t", "opt"],
            cwd=PERF_BUILD_DIR,
            timeout=3600,
        )
    except Exception:
        return False
    return True


def run_perf_record(
    proj: str,
    file: str,
    worker_idx: int,
    deadline: Optional[float] = None,
):
    input_path = os.path.join(DATA_DIR, proj, "original", file)

    try:
        opt_timeout = _bounded_timeout(300, deadline)
        if opt_timeout <= 0:
            return (False, "timeout")

        with tempfile.NamedTemporaryFile(suffix=".perf.data", delete=True) as tmp:
            perf_data = tmp.name
            cmd = [
                "taskset",
                "-c",
                str(worker_idx),
                "perf",
                "record",
                "-g",
                "--call-graph",
                "fp",
                "-o",
                perf_data,
                "--",
                PERF_OPT_BINARY,
                "-O3",
                input_path,
                "--disable-output",
            ]
            env_opt = os.environ.copy()
            token_keys = [x for x in env_opt if "TOKEN" in x.upper()]
            for key in token_keys:
                env_opt.pop(key, None)
            env_opt["LLVM_DISABLE_CRASH_REPORT"] = "1"
            env_opt["LLVM_DISABLE_SYMBOLIZATION"] = "1"
            subprocess.run(
                cmd,
                stdin=subprocess.DEVNULL,
                capture_output=True,
                timeout=opt_timeout,
                env=env_opt,
                preexec_fn=_disable_core_dumps,
                check=True,
            )

            perf_script = subprocess.Popen(
                ["perf", "script", "-i", perf_data],
                stdout=subprocess.PIPE,
                stderr=subprocess.DEVNULL,
            )
            collapse = subprocess.Popen(
                ["inferno-collapse-perf"],
                stdin=perf_script.stdout,
                stdout=subprocess.PIPE,
            )
            perf_script.stdout.close()
            stdout, _ = collapse.communicate()
            return (True, stdout.decode())
    except subprocess.TimeoutExpired:
        return (False, "timeout")
    except subprocess.CalledProcessError:
        return (False, "failed to run opt")
    except Exception:
        return (False, "failed to execute perf task")


def _run_perf_task(args):
    idx, proj, file, worker_count, deadline = args
    worker_idx = idx % worker_count
    return idx, proj, file, run_perf_record(proj, file, worker_idx, deadline)


def _flamegraph_from_collapsed(collapsed: str, title: str, output_path: str):
    result = subprocess.run(
        ["inferno-flamegraph", "--title", title, "--minwidth", "0.5"],
        input=collapsed,
        capture_output=True,
        text=True,
    )
    if result.returncode != 0:
        raise RuntimeError(f"inferno-flamegraph failed: {result.stderr}")
    with open(output_path, "w") as f:
        f.write(result.stdout)
    return output_path


def compute_hotspots(collapsed: str, top_n: int = 50):
    counts = {}
    for line in collapsed.splitlines():
        line = line.strip()
        if not line:
            continue
        parts = line.rsplit(" ", 1)
        if len(parts) != 2:
            continue
        stack_part, count_part = parts
        try:
            count = int(count_part)
        except ValueError:
            continue
        for func in stack_part.split(";"):
            func = func.strip()
            if func:
                counts[func] = counts.get(func, 0) + count

    total = sum(counts.values())
    return sorted(
        ((func, cnt, cnt / total * 100) for func, cnt in counts.items()),
        key=lambda x: x[1],
        reverse=True,
    )[:top_n]


def generate_combined_flamegraph(
    collapsed_sections: List[str],
    llvm_revision: str,
):
    if not collapsed_sections:
        print("No collapsed data, skipping combined flamegraph")
        return None, []

    merged = "".join(collapsed_sections)

    combined_svg = os.path.join(PERF_REPORT_DIR, "combined.svg")
    title = f"opt -O3 ({llvm_revision[:12]}, {len(collapsed_sections)} files)"
    svg_path = _flamegraph_from_collapsed(merged, title, combined_svg)

    hotspots = compute_hotspots(merged)
    hotspots_path = os.path.join(PERF_REPORT_DIR, "hotspots.txt")
    with open(hotspots_path, "w") as f:
        f.write(f"{'samples':>12}  {'pct':>6}  function\n")
        f.write(f"{'─' * 12}  {'─' * 6}  {'─' * 60}\n")
        for func, cnt, pct in hotspots:
            f.write(f"{cnt:>12}  {pct:>5.1f}%  {func}\n")

    return svg_path, hotspots


def generate_index_html(
    llvm_revision: str,
    file_count: int,
    hotspots: list,
):
    escaped_revision = llvm_revision[:12]

    rows = ""
    for i, (func, cnt, pct) in enumerate(hotspots):
        rows += (
            f'<tr><td style="text-align:right;color:#888">{i + 1}</td>'
            f'<td style="text-align:right">{cnt}</td>'
            f'<td style="text-align:right;color:#7eb8ff">{pct:.1f}%</td>'
            f"<td>{func}</td></tr>\n"
        )

    html = f"""<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>opt -O3 Flamegraph</title>
<style>
body {{ font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif; margin: 0; background: #1a1a2e; color: #e0e0e0; }}
h1 {{ font-size: 1.2em; margin: 0.5em 1em; }}
p {{ margin: 0.3em 1em; color: #888; }}
table {{ margin: 1em; border-collapse: collapse; font-size: 0.85em; }}
td {{ padding: 2px 8px; white-space: nowrap; max-width: 40em; overflow: hidden; text-overflow: ellipsis; }}
tr:nth-child(even) {{ background: #222244; }}
</style>
</head>
<body>
<h1>opt -O3 Flamegraph</h1>
<p>LLVM <code>{escaped_revision}</code> — {file_count} files</p>
<table>
<thead><tr><th>#</th><th>samples</th><th>pct</th><th>function</th></tr></thead>
<tbody>{rows}</tbody>
</table>
<object data="combined.svg" type="image/svg+xml" style="width:100%;height:calc(100vh - 20em);border:none;"></object>
</body>
</html>"""

    index_path = os.path.join(PERF_REPORT_DIR, "index.html")
    with open(index_path, "w") as f:
        f.write(html)


def main():
    parser = argparse.ArgumentParser(description="Profile opt -O3 with perf record")
    parser.add_argument(
        "--skip-build",
        action="store_true",
        help="Skip building opt (use existing build)",
    )
    parser.add_argument(
        "--skip-sync",
        action="store_true",
        help="Skip dataset sync",
    )
    args = parser.parse_args()

    if not args.skip_sync:
        print("Syncing dataset...")
        sync_dataset_from_remote()

    llvm_revision = (
        Path(os.path.join(DATA_DIR, "LLVM_VERSION")).read_text().strip()
    )
    print(f"Setting up LLVM at {llvm_revision}")
    setup_llvm(llvm_revision)

    if not args.skip_build:
        print("Building opt (RelWithDebInfo)...")
        if not build_opt():
            print("ERROR: Failed to build opt", flush=True)
            sys.exit(1)

    if not os.path.exists(PERF_OPT_BINARY):
        print(f"ERROR: opt binary not found at {PERF_OPT_BINARY}", flush=True)
        sys.exit(1)

    tasks = list_dataset_bc_tasks()
    if not tasks:
        print("No .bc tasks found", flush=True)
        sys.exit(1)

    print(f"Profiling {len(tasks)} files...")

    workers_env = os.environ.get("OPT_BENCH_WORKERS")
    try:
        requested_workers = (
            int(workers_env) if workers_env is not None else (os.cpu_count() or 1)
        )
    except ValueError:
        requested_workers = os.cpu_count() or 1
    requested_workers = max(1, requested_workers)
    worker_count = max(1, min(len(tasks), requested_workers))

    deadline = time.monotonic() + RUN_PERF_TIME_BUDGET_SECONDS

    task_args = [
        (idx, proj, file, worker_count, deadline)
        for idx, (proj, file) in enumerate(tasks)
    ]

    task_results = [None] * len(tasks)
    collapsed_sections = []
    timed_out = False
    unfinished = 0

    pool = multiprocessing.Pool(processes=worker_count)
    try:
        results_iter = pool.imap_unordered(_run_perf_task, task_args, chunksize=1)
        with tqdm(total=len(tasks), desc="perf record") as pbar:
            completed = 0
            while completed < len(tasks):
                remaining = max(0.0, _remaining_time_seconds(deadline))
                try:
                    idx, proj, file, ret = results_iter.next(timeout=remaining)
                except multiprocessing.TimeoutError:
                    timed_out = True
                    break

                task_results[idx] = (proj, file, ret)
                completed += 1
                pbar.update(1)
    finally:
        if timed_out:
            pool.terminate()
        else:
            pool.close()
        pool.join()

    failed = 0
    for item in task_results:
        if item is None:
            continue
        proj, file, (ok, value) = item
        if not ok:
            print(f"FAILED {proj}/{file}: {value}")
            failed += 1
        else:
            collapsed_sections.append(value)

    succeeded = len(collapsed_sections)

    if timed_out:
        unfinished = sum(1 for item in task_results if item is None)
        print(
            f"Time budget exhausted: {unfinished}/{len(tasks)} tasks unfinished"
        )

    print(f"Profiling complete: {succeeded} succeeded, {failed} failed, "
          f"{unfinished} unfinished")

    if not collapsed_sections:
        print("No successful profiles, skipping flamegraph generation")
        sys.exit(1)

    if os.path.exists(PERF_REPORT_DIR):
        shutil.rmtree(PERF_REPORT_DIR)
    os.makedirs(PERF_REPORT_DIR)

    print(f"Generating combined flamegraph from {len(collapsed_sections)} profiles...")
    combined_svg, hotspots = generate_combined_flamegraph(collapsed_sections, llvm_revision)
    if not combined_svg:
        print("Failed to generate combined flamegraph")
        sys.exit(1)

    print("Generating index.html...")
    generate_index_html(llvm_revision, len(collapsed_sections), hotspots)

    print(f"Done. Report at {PERF_REPORT_DIR}/index.html")


if __name__ == "__main__":
    main()
