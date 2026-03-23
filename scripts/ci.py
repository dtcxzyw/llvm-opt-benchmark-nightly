# uv run scripts/ci.py update
# uv run scripts/ci.py test # with env USER/COMMENT_BODY/ISSUE_URL

from dataclasses import dataclass
import heapq
import os
import argparse
import shutil
import subprocess
import difflib
from concurrent.futures import ThreadPoolExecutor
from typing import Optional, List, Tuple
import authorized_users
import huggingface_hub
from tenacity import retry, stop_after_attempt, wait_exponential_jitter
from pathlib import Path
from urllib.parse import urlparse
import requests
import json
import math
from tqdm import tqdm

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
LLVM_REPO = os.path.join(ROOT_DIR, "work/llvm-project")
LLVM_BUILD_DIR = os.path.join(ROOT_DIR, "work/llvm-build")
OPT_BINARY = os.path.join(LLVM_BUILD_DIR, "bin/opt")
TOOLS_BUILD_DIR = os.path.join(ROOT_DIR, "build")
RELAXED_DIFF_BINARY = os.path.join(
    TOOLS_BUILD_DIR, "scripts", "llvm-relaxed-diff", "llvm-relaxed-diff"
)
PATCH_FILE = os.path.join(ROOT_DIR, "work/patch.diff")
OPT_OUT_DIR = os.path.join(ROOT_DIR, "work/opt-out")
LLVM_REPO_URL = "https://github.com/llvm/llvm-project.git"
DATA_DIR = os.path.join(ROOT_DIR, "data")
STATS_BASELINE_FILE = os.path.join(DATA_DIR, "stats.json.baseline")
REPORT_DIR = os.path.join(ROOT_DIR, "report")
OPT_LOG_FILE = os.path.join(REPORT_DIR, "opt_log")
HF_URL = "hf://buckets/llvm-opt-benchmark/llvm-opt-benchmark"
JOB_ID = os.environ.get("GITHUB_RUN_ID", "local")
GH_TOKEN = os.environ.get("GITHUB_TOKEN", "")


@retry(stop=stop_after_attempt(5), wait=wait_exponential_jitter(initial=1, max=10))
def sync_dataset_from_remote():
    huggingface_hub.sync_bucket(HF_URL, DATA_DIR, delete=True)


@retry(stop=stop_after_attempt(5), wait=wait_exponential_jitter(initial=1, max=10))
def sync_dataset_to_remote():
    huggingface_hub.sync_bucket(
        DATA_DIR,
        HF_URL,
        include=["*/optimized/*.bc", "LLVM_VERSION", "stats.json.baseline"],
    )


@retry(stop=stop_after_attempt(5), wait=wait_exponential_jitter(initial=1, max=10))
def setup_llvm(revision: str):
    if not os.path.exists(LLVM_REPO):
        subprocess.check_call(["git", "clone", LLVM_REPO_URL, LLVM_REPO])
    subprocess.check_call(["git", "reset", "HEAD"], cwd=LLVM_REPO)
    subprocess.check_call(["git", "checkout", "."], cwd=LLVM_REPO)
    subprocess.check_call(["git", "clean", "-fdx"], cwd=LLVM_REPO)
    subprocess.check_call(["git", "fetch"], cwd=LLVM_REPO)
    subprocess.check_call(["git", "checkout", revision], cwd=LLVM_REPO)


@retry(stop=stop_after_attempt(5), wait=wait_exponential_jitter(initial=1, max=10))
def reply_issue_comment(
    issue_url: str, original_comment: str, append_comment: str, user: str
):
    full_comment = f"> {original_comment}\n\n@{user} {append_comment}"
    # Use gh cli to post the comment.
    subprocess.check_call(
        ["gh", "issue", "comment", issue_url, "--body", full_comment], cwd=ROOT_DIR
    )


@retry(stop=stop_after_attempt(5), wait=wait_exponential_jitter(initial=1, max=10))
def push_branch(branch: str):
    subprocess.check_call(["git", "push", "origin", branch], cwd=ROOT_DIR)


def create_branch(branch: str):
    subprocess.check_call(["git", "checkout", "-b", branch], cwd=ROOT_DIR)


def commit_report_if_changed(message: str) -> bool:
    subprocess.check_call(["git", "add", "report"], cwd=ROOT_DIR)
    ret = subprocess.call(
        ["git", "diff", "--cached", "--quiet"],
        cwd=ROOT_DIR,
    )
    if ret == 0:
        return False
    subprocess.check_call(["git", "commit", "-m", message], cwd=ROOT_DIR)
    return True


@retry(stop=stop_after_attempt(5), wait=wait_exponential_jitter(initial=1, max=10))
def create_pr(head: str, base: str, title: str, body: str, label: str):
    subprocess.run(
        [
            "gh",
            "pr",
            "create",
            "--head",
            head,
            "--base",
            base,
            "--title",
            title,
            "--body-file",
            "-",
            "--label",
            label,
        ],
        input=body.encode("utf-8"),
        check=True,
        cwd=ROOT_DIR,
    )


def setup_base_environment() -> str:
    sync_dataset_from_remote()
    llvm_revision = Path(os.path.join(DATA_DIR, "LLVM_VERSION")).read_text().strip()
    setup_llvm(llvm_revision)
    return llvm_revision


# Get the latest llvm version from the upstream.
def update_llvm() -> str:
    subprocess.check_call(["git", "fetch", "origin", "main"], cwd=LLVM_REPO)
    revision = (
        subprocess.check_output(["git", "rev-parse", "origin/main"], cwd=LLVM_REPO)
        .decode()
        .strip()
    )
    subprocess.check_call(["git", "checkout", revision], cwd=LLVM_REPO)
    return revision


@dataclass
class TestConfig:
    comptime: bool = False
    stats: str = None


def build_llvm(config: TestConfig) -> bool:
    try:
        if os.path.exists(LLVM_BUILD_DIR):
            shutil.rmtree(LLVM_BUILD_DIR)
        os.makedirs(LLVM_BUILD_DIR)
        cmd = [
            "cmake",
            "-S",
            f"{LLVM_REPO}/llvm",
            "-DCMAKE_BUILD_TYPE=Release",
            "-G",
            "Ninja",
            "-DLLVM_INCLUDE_EXAMPLES=OFF",
            "-DLLVM_OPTIMIZED_TABLEGEN=ON",
            "-DLLVM_ENABLE_WARNINGS=OFF",
            "-DLLVM_APPEND_VC_REV=OFF",
            "-DLLVM_TARGETS_TO_BUILD=X86",
            "-DCMAKE_C_COMPILER=clang",
            "-DCMAKE_CXX_COMPILER=clang++",
            "-DCMAKE_C_COMPILER_LAUNCHER=ccache",
            "-DCMAKE_CXX_COMPILER_LAUNCHER=ccache",
        ]

        if config.comptime:
            cmd.append("-DLLVM_ENABLE_ASSERTIONS=OFF")
        else:
            cmd.append("-DLLVM_ENABLE_ASSERTIONS=ON")
            cmd.append("-DLLVM_ABI_BREAKING_CHECKS=FORCE_OFF")
            cmd.append("-DLLVM_FORCE_ENABLE_STATS=ON")
        subprocess.check_call(cmd, cwd=LLVM_BUILD_DIR)
        cmd = ["cmake", "--build", ".", "-j", "-t", "opt"]
        subprocess.check_call(
            cmd,
            cwd=LLVM_BUILD_DIR,
            timeout=3600,
        )

        if not config.comptime and not config.stats:
            if os.path.exists(TOOLS_BUILD_DIR):
                shutil.rmtree(TOOLS_BUILD_DIR)
            os.path.makedirs(TOOLS_BUILD_DIR)
            subprocess.check_call(
                [
                    "cmake",
                    "-S",
                    ROOT_DIR,
                    "-B",
                    TOOLS_BUILD_DIR,
                    "-DCMAKE_BUILD_TYPE=Release",
                    "-G",
                    "Ninja",
                    "-DLLVM_DIR="
                    + os.path.join(LLVM_BUILD_DIR, "lib", "cmake", "llvm"),
                ],
                cwd=ROOT_DIR,
                timeout=180,
            )
            subprocess.check_call(
                ["cmake", "--build", TOOLS_BUILD_DIR, "-j", "-t", "llvm-relaxed-diff"],
                cwd=ROOT_DIR,
                timeout=180,
            )
    except Exception:
        return False
    return True


@retry(stop=stop_after_attempt(5), wait=wait_exponential_jitter(initial=1, max=10))
def get_llvm_patch(patch_url: str) -> str:
    if not patch_url.endswith(".diff"):
        patch_url += ".diff"
    session = requests.Session()
    headers = {
        "X-GitHub-Api-Version": "2022-11-28",
        "Accept": "application/vnd.github+json",
    }
    if GH_TOKEN:
        headers["Authorization"] = f"Bearer {GH_TOKEN}"
    session.headers.update(headers)
    ret = session.get(patch_url, timeout=120)
    ret.raise_for_status()
    return ret.text


def apply_llvm_patch(patch_url: str) -> bool:
    if os.path.exists(PATCH_FILE):
        os.remove(PATCH_FILE)
    patch_content = get_llvm_patch(patch_url)
    with open(PATCH_FILE, "w") as f:
        f.write(patch_content)
    result = subprocess.call(
        [
            "git",
            "apply",
            "-3",
            PATCH_FILE,
            "--include=llvm/lib/*",
            "--include=llvm/include/*",
        ],
        cwd=LLVM_REPO,
    )
    if result != 0:
        return False
    # If nothing is applied, it also returns 0, so we need to check if there are any changes after applying the patch.
    result = (
        subprocess.check_output(["git", "diff", "--name-only", "HEAD"], cwd=LLVM_REPO)
        .decode()
        .strip()
    )
    return bool(result)


def _extract_hunks_from_unified(unified_lines: List[str]) -> List[List[str]]:
    hunks = []
    current_hunk = None
    for line in unified_lines:
        if line.startswith("--- ") or line.startswith("+++ "):
            continue
        if line.startswith("@@ "):
            if current_hunk is not None:
                hunks.append(current_hunk)
            current_hunk = []
            continue
        if current_hunk is None:
            continue
        if line.startswith("\\ No newline at end of file"):
            continue
        if line[:1] in {" ", "-", "+"}:
            current_hunk.append(line)
    if current_hunk is not None:
        hunks.append(current_hunk)
    return hunks


def _build_minimized_files_from_hunks(hunks: List[List[str]]) -> Optional[tuple]:
    if not hunks:
        return None

    minimized_ref_lines = []
    minimized_new_lines = []
    for hunk_id, hunk_lines in enumerate(hunks):
        begin_marker = f"begin_hunk_{hunk_id}"
        end_marker = f"end_hunk_{hunk_id}"
        minimized_ref_lines.append(begin_marker)
        minimized_new_lines.append(begin_marker)

        for line in hunk_lines:
            content = line[1:]
            if line.startswith(" "):
                minimized_ref_lines.append(content)
                minimized_new_lines.append(content)
            elif line.startswith("-"):
                minimized_ref_lines.append(content)
            elif line.startswith("+"):
                minimized_new_lines.append(content)

        minimized_ref_lines.append(end_marker)
        minimized_new_lines.append(end_marker)

    return minimized_ref_lines, minimized_new_lines


# (ref_bc, new_bc) -> (minimized_ref_ir, minimized_new_ir)
def compute_diff(ref_bc: str, new_bc: str) -> Optional[tuple]:
    base_name = new_bc.removesuffix(".bc")
    ref_ir = base_name + ".ref.ll"
    new_ir = base_name + ".new.ll"

    ret = subprocess.run(
        [RELAXED_DIFF_BINARY, ref_bc, new_bc, ref_ir, new_ir],
        stdin=subprocess.DEVNULL,
        capture_output=True,
        timeout=120,
    )
    if ret.returncode != 0:
        raise RuntimeError("llvm-relaxed-diff failed")

    with open(ref_ir, "r") as f:
        ref_lines = f.read().splitlines()
    with open(new_ir, "r") as f:
        new_lines = f.read().splitlines()

    unified = list(
        difflib.unified_diff(
            ref_lines,
            new_lines,
            fromfile=ref_ir,
            tofile=new_ir,
            n=3,
            lineterm="",
        )
    )
    hunks = _extract_hunks_from_unified(unified)
    minimized = _build_minimized_files_from_hunks(hunks)
    if minimized is None:
        return None

    minimized_ref_lines, minimized_new_lines = minimized
    with open(ref_ir, "w") as f:
        f.write("\n".join(minimized_ref_lines) + "\n")
    with open(new_ir, "w") as f:
        f.write("\n".join(minimized_new_lines) + "\n")
    return (ref_ir, new_ir)


def extract_stats_json(stderr_text: str) -> Optional[dict]:
    decoder = json.JSONDecoder()
    idx = stderr_text.find("{")
    while idx != -1:
        try:
            obj, _ = decoder.raw_decode(stderr_text[idx:])
            if isinstance(obj, dict):
                return obj
        except json.JSONDecodeError:
            pass
        idx = stderr_text.find("{", idx + 1)
    return None


def run_opt_file(config: TestConfig, proj: str, file: str, worker_idx: int):
    input_path = os.path.join(DATA_DIR, proj, "original", file)
    ref_path = os.path.join(DATA_DIR, proj, "optimized", file)
    optimized_path = os.path.join(OPT_OUT_DIR, proj + "-s-" + file)
    try:
        cmd = [OPT_BINARY, "-O3", input_path]
        if config.comptime:
            cmd = (
                [
                    "taskset",
                    "-c",
                    str(worker_idx),
                    "perf",
                    "stat",
                    "-e",
                    "instructions:u",
                    "--no-big-num",
                ]
                + cmd
                + ["--disable-output"]
            )
        else:
            cmd += ["--stats", "--stats-json"]
            if config.stats:
                cmd.append("--disable-output")
            else:
                cmd += ["-o", optimized_path]
        env_opt = os.environ.copy()
        # drop tokens
        token_keys = [x for x in env_opt if "TOKEN" in x.upper()]
        for key in token_keys:
            env_opt.pop(key, None)
        env_opt["LLVM_DISABLE_CRASH_REPORT"] = "1"
        env_opt["LLVM_DISABLE_SYMBOLIZATION"] = "1"
        ret = subprocess.run(
            cmd,
            stdin=subprocess.DEVNULL,
            capture_output=True,
            timeout=600,
            env=env_opt,
        )
        if ret.returncode != 0:
            return "fail"

        if config.comptime:
            err = ret.stderr.decode()
            comptime_result = 0
            for line in err.splitlines():
                if "instructions:u" in line:
                    comptime_result = int(line.strip().split()[0])
                    break
            return comptime_result

        rendered = None
        if not config.stats:
            if not os.path.exists(optimized_path):
                return "fail"

            if os.path.exists(ref_path):
                identical = False
                if (
                    subprocess.call(
                        ["cmp", "-s", optimized_path, ref_path],
                        stderr=subprocess.DEVNULL,
                        stdout=subprocess.DEVNULL,
                    )
                    == 0
                ):
                    identical = True
                    os.remove(optimized_path)

                if not identical:
                    try:
                        rendered = compute_diff(ref_path, optimized_path)
                    except (subprocess.SubprocessError, OSError, RuntimeError):
                        return "diff fail"

        err = ret.stderr.decode()
        stats_result = extract_stats_json(err)
        if stats_result is None:
            return "fail"
        return stats_result, rendered
    except subprocess.TimeoutExpired:
        return "timeout"
    except Exception:
        return "fail"


def run_opt(config: TestConfig):
    if os.path.exists(OPT_OUT_DIR):
        shutil.rmtree(OPT_OUT_DIR)
    os.makedirs(OPT_OUT_DIR)

    tasks = []
    for proj in os.listdir(DATA_DIR):
        original_dir = os.path.join(DATA_DIR, proj, "original")
        if not os.path.exists(original_dir):
            continue
        for file in os.listdir(original_dir):
            if file.endswith(".bc"):
                tasks.append((proj, file))

    # Keep worker count bounded and configurable for CI environments.
    workers_env = os.environ.get("OPT_BENCH_WORKERS")
    try:
        requested_workers = (
            int(workers_env) if workers_env is not None else (os.cpu_count() or 1)
        )
    except ValueError:
        requested_workers = os.cpu_count() or 1
    requested_workers = max(1, requested_workers)
    worker_count = max(1, min(len(tasks) if tasks else 1, requested_workers))

    stats_nondeter_keys = {
        "dse.NumDomMemDefChecks",
        "ir.NumInstrRenumberings",
        "basicaa.SearchTimes",
        "aa.NumMayAlias",
        "capture-tracking.NumCaptured",
        "aa.NumMustAlias",
        "memory-builtins.ObjectVisitorArgument",
        "aa.NumNoAlias",
        "assume-queries.NumAssumeQueries",
        "capture-tracking.NumNotCaptured",
        "ipt.NumInstScanned",
        "simplifycfg.NumSimpl",
        "instcount.LargestFunctionSize",
        "instcount.LargestFunctionBBCount",
    }

    comptime_results = {}
    stats_results = {}
    rendered_files = []
    task_results = [None] * len(tasks)

    def _run_task(args):
        idx, (proj, file) = args
        worker_idx = idx % worker_count
        return idx, proj, file, run_opt_file(config, proj, file, worker_idx=worker_idx)

    progress_miniters = max(1, math.ceil(len(tasks) * 0.05))
    with ThreadPoolExecutor(max_workers=worker_count) as executor:
        with tqdm(total=len(tasks), miniters=progress_miniters, desc="run_opt") as pbar:
            for idx, proj, file, ret in executor.map(_run_task, enumerate(tasks)):
                task_results[idx] = (proj, file, ret)
                pbar.update(1)

    with open(OPT_LOG_FILE, "w") as log_f:
        for item in task_results:
            if item is None:
                continue
            proj, file, ret = item
            if isinstance(ret, str):
                log_f.write(f"{proj}/{file}: {ret}\n")
                continue

            if config.comptime:
                comptime_results[f"{proj}/{file}"] = ret
            else:
                stats_result, rendered = ret
                if config.stats:
                    if config.stats in stats_result:
                        stats_results[f"{proj}/{file}"] = stats_result[config.stats]
                else:
                    for key, value in stats_result.items():
                        if key in stats_nondeter_keys:
                            continue
                        stats_results[key] = stats_results.get(key, 0) + value
                    if rendered:
                        rendered_files.append(rendered)

    return comptime_results, stats_results, rendered_files


# Pick top K improved/regressed stats
def compare_stats_impl(baseline: dict, new: dict, postfix: str, avg: bool) -> str:
    if not baseline or not new:
        return None

    improvements = []
    regressions = []
    THRESHOLD = 0.00001
    log_sum_baseline = 0
    log_sum_new = 0
    matched_count = 0
    for key in new:
        if key not in baseline:
            continue
        old_value = baseline[key]
        new_value = new[key]
        if old_value <= 0 or new_value <= 0:
            continue
        change = (new_value - old_value) / old_value
        if abs(change) < THRESHOLD:
            continue
        log_sum_baseline += math.log(old_value)
        log_sum_new += math.log(new_value)
        matched_count += 1
        if change < 0:
            improvements.append((key, old_value, new_value, change))
        elif change > 0:
            regressions.append((key, old_value, new_value, change))

    improvements.sort(key=lambda x: x[3])
    regressions.sort(key=lambda x: x[3], reverse=True)
    report = ""
    TOPK = 10
    if improvements:
        report += f"Top {min(len(improvements), TOPK)} decrements{postfix}:\n"
        for key, old_value, new_value, change in improvements[:TOPK]:
            report += f"  {key}: {old_value} -> {new_value} {change:+.2%}\n"

    if regressions:
        report += f"Top {min(len(regressions), TOPK)} increments{postfix}:\n"
        for key, old_value, new_value, change in regressions[:TOPK]:
            report += f"  {key}: {old_value} -> {new_value} {change:+.2%}\n"

    if not report:
        return f"No significant changes{postfix}.\n"

    if avg and matched_count > 0:
        avg_change = math.exp((log_sum_new - log_sum_baseline) / matched_count) - 1
        report += f"\n  GeoMean: {avg_change:+.2%}\n"

    return report


def aggregate_stats_by_project(stats: dict) -> dict:
    stats_by_proj = {}
    for key, value in stats.items():
        proj = key.split("/")[0]
        stats_by_proj[proj] = stats_by_proj.get(proj, 0) + value
    return stats_by_proj


def compare_stats(baseline: dict, new: dict, by_project: bool, avg: bool) -> str:
    if not by_project:
        return compare_stats_impl(baseline, new, "", avg) or "No significant changes.\n"

    by_file = compare_stats_impl(baseline, new, " (by file)", avg)
    # by projects
    baseline_by_proj = aggregate_stats_by_project(baseline)
    new_by_proj = aggregate_stats_by_project(new)
    by_proj = compare_stats_impl(baseline_by_proj, new_by_proj, " (by project)", avg)
    if by_file is None:
        by_file = "No significant changes (by file).\n"
    if by_proj is None:
        by_proj = "No significant changes (by project).\n"
    return by_file + "\n" + by_proj


def _report_ir_output_path(ir_path: str) -> str:
    normalized_name = (
        os.path.basename(ir_path).replace(".ref.ll", ".ll").replace(".new.ll", ".ll")
    )
    if "-s-" in normalized_name:
        proj, file_name = normalized_name.split("-s-", 1)
        return os.path.join(REPORT_DIR, proj, file_name)
    return os.path.join(REPORT_DIR, normalized_name)


def copy_report_ir(ir_path: str):
    output_path = _report_ir_output_path(ir_path)
    output_dir = os.path.dirname(output_path)
    if output_dir:
        os.makedirs(output_dir, exist_ok=True)
    shutil.copy(ir_path, output_path)


def get_opt_log_preview() -> str:
    if not os.path.exists(OPT_LOG_FILE):
        return ""
    with open(OPT_LOG_FILE, "r") as f:
        lines = [line.rstrip("\n") for line in f.readlines()]
    non_empty_lines = [line for line in lines if line.strip()]
    if not non_empty_lines:
        return ""
    preview_lines = non_empty_lines[:25]
    if len(non_empty_lines) > 25:
        preview_lines.append("truncated")
    preview = "\n".join(preview_lines)
    return f"## Errors\n```\n{preview}\n```\n"


def commit_grouped_diff_changes(kept_files: List[Tuple[str, str, int]]):
    groups = [
        ("report: add > sub", lambda delta: delta > 0),
        ("report: add < sub", lambda delta: delta < 0),
        ("report: add == sub", lambda delta: delta == 0),
    ]
    for message, predicate in groups:
        for _, new_ir, delta in kept_files:
            if predicate(delta):
                copy_report_ir(new_ir)
        commit_report_if_changed(message)


def generate_diff_report(
    rendered_files: list,
) -> Tuple[str, List[Tuple[str, str, int]]]:
    MAX_DIFF_PER_FILE = 1000
    MAX_DIFF_TOTAL = 15000
    MAX_FILE_TOTAL = 200
    TRIVIAL_PENALTY = 200
    DIVERSITY_PENALTY_INC = 30

    # proj -> list of (cost, real_cost, ref_ir, new_ir, proj, added, removed)
    diffs = dict()

    total_added = 0
    total_removed = 0
    for ref_ir, new_ir in rendered_files:
        proj = os.path.basename(ref_ir).split("-s-")[0]
        if ref_ir is None or new_ir is None:
            continue
        with open(ref_ir, "r") as f:
            ref_lines = f.readlines()
        with open(new_ir, "r") as f:
            new_lines = f.readlines()
        diff = difflib.unified_diff(
            ref_lines,
            new_lines,
            fromfile=ref_ir,
            tofile=new_ir,
            n=3,
            lineterm="",
        )
        diff_lines = list(diff)
        number_of_added_lines = sum(
            1
            for line in diff_lines
            if line.startswith("+") and not line.startswith("+++")
        )
        number_of_removed_lines = sum(
            1
            for line in diff_lines
            if line.startswith("-") and not line.startswith("---")
        )
        if number_of_added_lines == 0 and number_of_removed_lines == 0:
            continue
        total_added += number_of_added_lines
        total_removed += number_of_removed_lines

        cost = len(ref_lines) + number_of_added_lines + number_of_removed_lines
        real_cost = cost
        if cost > MAX_DIFF_PER_FILE or len(new_lines) > MAX_DIFF_PER_FILE:
            continue
        if number_of_added_lines == number_of_removed_lines:
            cost += TRIVIAL_PENALTY
        diffs.setdefault(proj, []).append(
            (
                cost,
                real_cost,
                ref_ir,
                new_ir,
                proj,
                number_of_added_lines,
                number_of_removed_lines,
            )
        )

    diff_heap = []
    for proj in diffs.values():
        proj.sort(key=lambda x: x[0])
        diff_heap.append(proj.pop(0))
    heapq.heapify(diff_heap)

    diversity_penalty = dict()
    diff_pattern = set()
    file_count = 0
    diff_count = 0
    kept_files = []
    kept_added = 0
    kept_removed = 0
    kept_files_sorted = []
    while len(diff_heap) != 0:
        _, real_cost, ref_ir, new_ir, proj, add, sub = heapq.heappop(diff_heap)
        proj_list = diffs[proj]
        if len(proj_list) != 0:
            diversity_penalty[proj] = (
                diversity_penalty.get(proj, 0) + DIVERSITY_PENALTY_INC
            )
            cnt2, real_cost2, ref_ir2, new_ir2, proj2, add2, sub2 = proj_list.pop(0)
            cnt2 += diversity_penalty[proj]
            heapq.heappush(
                diff_heap, (cnt2, real_cost2, ref_ir2, new_ir2, proj2, add2, sub2)
            )

        key = (add, sub)
        if key in diff_pattern:
            continue
        diff_pattern.add(key)
        if file_count < MAX_FILE_TOTAL and diff_count + real_cost <= MAX_DIFF_TOTAL:
            file_count += 1
            diff_count += real_cost
            kept_added += add
            kept_removed += sub
            kept_files.append((ref_ir, new_ir, add - sub))
            kept_files_sorted.append((ref_ir, add, sub))
        else:
            break

    report = f"Total {len(rendered_files)} files with differences, showing {len(kept_files)} files in the report.\n"
    report += f"Original: Total added lines: {total_added}, total removed lines: {total_removed}.\n"
    report += (
        f"Kept: Total added lines: {kept_added}, total removed lines: {kept_removed}.\n"
    )

    # Sort kept_files_sorted by add - sub.
    kept_files_sorted.sort(key=lambda x: (x[1] - x[2], -(x[1] + x[2])), reverse=True)
    if len(kept_files_sorted) > 200:
        kept_files_sorted = kept_files_sorted[:100] + kept_files_sorted[-100:]
    for file, add, sub in kept_files_sorted:
        name = os.path.basename(file)
        pos = name.index("-s-")
        proj = name[:pos]
        file_name = name[pos + 3 :].removesuffix(".ref.ll")
        report += f"{proj}/{file_name}: +{add} -{sub}\n"

    return report, kept_files


def update():
    old_revision = setup_base_environment()
    new_revision = update_llvm()
    # if old_revision == new_revision:
    #     print("LLVM is already up to date.")
    #     return
    config = TestConfig()
    if not build_llvm(config):
        print("Failed to build LLVM with the latest revision.")
        return
    stats_baseline = None
    if os.path.exists(STATS_BASELINE_FILE):
        with open(STATS_BASELINE_FILE, "r") as f:
            stats_baseline = json.load(f)
    _, stats, rendered_files = run_opt(config)
    stats_cmp = "No significant changes.\n"
    if stats_baseline:
        stats_cmp = compare_stats(stats_baseline, stats, by_project=False, avg=False)

    should_report = stats_cmp != "No significant changes.\n" or len(rendered_files) > 0
    report, kept_files = generate_diff_report(rendered_files)
    if should_report:
        pr_title = f"Update LLVM baseline to {new_revision[:8]}"
        pr_body = f"LLVM baseline is updated from https://github.com/llvm/llvm-project/commit/{old_revision} to https://github.com/llvm/llvm-project/commit/{new_revision}.\n\n"
        pr_body += get_opt_log_preview()
        llvm_history = ""
        try:
            llvm_history = (
                subprocess.check_output(
                    [
                        "git",
                        "log",
                        "--oneline",
                        f"{old_revision}..{new_revision}",
                        "--",
                        "llvm/lib",
                        "llvm/include",
                    ],
                    cwd=LLVM_REPO,
                )
                .decode()
                .strip()
            )
            history_lines = llvm_history.splitlines()
            if len(history_lines) > 100:
                llvm_history = (
                    "\n".join(history_lines[:100])
                    + f"\n... (total {len(history_lines)} commits)"
                )
        except Exception:
            pass
        if llvm_history:
            pr_body += f"## Commits in this update:\n```\n{llvm_history}\n```\n\n"

        if stats_cmp:
            pr_body += f"## Changes in statistics\n```\n{stats_cmp}\n```\n"
        pr_body += f"## Diff report\n```\n{report}\n```\n"

        base_branch_name = f"task-{JOB_ID}-base"
        change_branch_name = f"task-{JOB_ID}-change"
        for ref_ir, _, _ in kept_files:
            copy_report_ir(ref_ir)
        create_branch(base_branch_name)
        commit_report_if_changed("report: baseline refs")
        push_branch(base_branch_name)

        create_branch(change_branch_name)
        commit_grouped_diff_changes(kept_files)

        with open(os.path.join(REPORT_DIR, "stats.json"), "w") as f:
            json.dump(stats, f, indent=2, sort_keys=True)
        commit_report_if_changed("report: metadata")
        push_branch(change_branch_name)
        create_pr(change_branch_name, base_branch_name, pr_title, pr_body, "update")

    # Update baseline bc
    for file in os.listdir(OPT_OUT_DIR):
        if file.endswith(".bc"):
            pos = file.index("-s-")
            proj = file[:pos]
            file_name = file[pos + 3 :]
            ref_path = os.path.join(DATA_DIR, proj, "optimized", file_name)
            os.replace(os.path.join(OPT_OUT_DIR, file), ref_path)
    # Update baseline stats
    with open(STATS_BASELINE_FILE, "w") as f:
        json.dump(stats, f, indent=2, sort_keys=True)
    # Update llvm version
    with open(os.path.join(DATA_DIR, "LLVM_VERSION"), "w") as f:
        f.write(new_revision)
    sync_dataset_to_remote()


def test(user: str, comment_body: str, issue_url: str):
    old_revision = setup_base_environment()
    comment_body = comment_body.strip()
    if comment_body.startswith(">"):
        # Ignore quoted comments.
        return
    config = TestConfig()
    patch_url = ""
    if comment_body.startswith("/comptime "):
        # /comptime <patch_url>
        patch_url = comment_body.removeprefix("/comptime ").strip()
        config = TestConfig(comptime=True)
    elif comment_body.startswith("/stat "):
        # /stat statname <patch_url>
        parts = comment_body.removeprefix("/stat ").strip().split()
        if len(parts) != 2:
            reply_issue_comment(
                issue_url,
                comment_body,
                "Invalid command format. Use `/stat statname <patch_url>`.",
                user,
            )
            return
        config = TestConfig(stats=parts[0].strip())
        patch_url = parts[1].strip()
    else:
        if "github.com/llvm/llvm-project" not in comment_body:
            # Ignore normal comments
            return
        config = TestConfig(comptime=False, stats=None)
        patch_url = comment_body

    try:
        res = urlparse(patch_url)
        if res.scheme != "https":
            reply_issue_comment(
                issue_url,
                comment_body,
                f"Please provide a valid HTTPS URL: {patch_url}",
                user,
            )
            return
        if res.netloc != "github.com":
            reply_issue_comment(
                issue_url,
                comment_body,
                f"Please provide a valid GitHub URL: {patch_url}",
                user,
            )
            return
        patch_path = res.path.removeprefix("/").strip()
        if not patch_path:
            reply_issue_comment(
                issue_url,
                comment_body,
                f"Invalid patch URL: {patch_url}",
                user,
            )
            return
        patch_url = f"https://github.com/{patch_path}"
    except Exception:
        reply_issue_comment(
            issue_url,
            comment_body,
            f"Invalid patch URL: {patch_url}",
            user,
        )
        return

    patch_name = patch_path.removeprefix("llvm/llvm-project/pull/")

    if config.comptime:
        with open("/proc/sys/kernel/randomize_va_space", "r") as f:
            if int(f.read().strip()) != 0:
                print("Please disable ASLR")
                return
        with open("/proc/sys/kernel/perf_event_paranoid", "r") as f:
            if int(f.read().strip()) != -1:
                print("Please enable userland `perf`")
                return

        if not build_llvm(config):
            return

        baseline_comptime, _, _ = run_opt(config)

    try:
        patch_applied = apply_llvm_patch(patch_url)
    except Exception:
        reply_issue_comment(
            issue_url,
            comment_body,
            "Failed to fetch the patch. Please make sure the patch URL is reachable and valid.",
            user,
        )
        return

    if not patch_applied:
        reply_issue_comment(
            issue_url,
            comment_body,
            f"The patch cannot be applied cleanly. Please make sure the patch is based on the latest main branch (or https://github.com/llvm/llvm-project/commit/{old_revision}) and does not have conflicts.",
            user,
        )
        return
    if not build_llvm(config):
        reply_issue_comment(
            issue_url,
            comment_body,
            f"Failed to build LLVM with the patch applied (base commit https://github.com/llvm/llvm-project/commit/{old_revision}). Please check if the patch can be built successfully.",
            user,
        )
        return
    comptime, stats, rendered_files = run_opt(config)

    comptime_cmp = None
    stats_cmp = None

    if config.comptime:
        comptime_cmp = compare_stats(
            baseline_comptime, comptime, by_project=True, avg=True
        )
    elif os.path.exists(STATS_BASELINE_FILE):
        with open(STATS_BASELINE_FILE, "r") as f:
            stats_baseline = json.load(f)
        single_stat = config.stats is not None
        stats_cmp = compare_stats(
            stats_baseline, stats, by_project=single_stat, avg=single_stat
        )

    pr_title = f"pre-commit: {patch_name}"
    pr_body = ""
    pr_body += f"cc @{user}\n\n"
    pr_body += f"Link: {patch_url}\n"
    pr_body += (
        f"Baseline commit: https://github.com/llvm/llvm-project/commit/{old_revision}\n"
    )
    pr_body += get_opt_log_preview()
    base_branch_name = f"task-{JOB_ID}-base"
    change_branch_name = f"task-{JOB_ID}-change"
    if comptime_cmp:
        pr_body += f"## Changes in compile-time\n```\n{comptime_cmp}\n```\n"
    if stats_cmp:
        pr_body += f"## Changes in statistics\n```\n{stats_cmp}\n```\n"

    kept_files = None
    if not config.comptime and not config.stats:
        report, kept_files = generate_diff_report(rendered_files)
        pr_body += f"## Diff report\n```\n{report}\n```\n"
    if kept_files:
        for ref_ir, _, _ in kept_files:
            copy_report_ir(ref_ir)
    create_branch(base_branch_name)
    commit_report_if_changed("report: baseline refs")
    push_branch(base_branch_name)

    create_branch(change_branch_name)
    if kept_files:
        commit_grouped_diff_changes(kept_files)
    if stats:
        with open(os.path.join(REPORT_DIR, "stats.json"), "w") as f:
            json.dump(stats, f, indent=2, sort_keys=True)
    if os.path.exists(PATCH_FILE):
        shutil.copy(PATCH_FILE, os.path.join(REPORT_DIR, "patch.diff"))
    commit_report_if_changed("report: metadata")
    push_branch(change_branch_name)
    try:
        create_pr(change_branch_name, base_branch_name, pr_title, pr_body, "pr_review")
    except Exception:
        reply_issue_comment(
            issue_url,
            comment_body,
            "Failed to create pull request.",
            user,
        )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="CI script for llvm-opt-benchmark")
    parser.add_argument("command", choices=["update", "test"], help="Command to run")
    args = parser.parse_args()
    work_dir = os.path.join(ROOT_DIR, "work")
    if not os.path.exists(work_dir):
        os.makedirs(work_dir)

    if args.command == "update":
        update()
    elif args.command == "test":
        if (
            not os.environ.get("USER")
            or not os.environ.get("COMMENT_BODY")
            or not os.environ.get("ISSUE_URL")
        ):
            print(
                "Please set USER, COMMENT_BODY, and ISSUE_URL environment variables for testing."
            )
            exit(1)
        user = os.environ["USER"]
        comment_body = os.environ["COMMENT_BODY"]
        issue_url = os.environ["ISSUE_URL"]
        if not authorized_users.is_authorized_user(user):
            print(f"User {user} is not authorized to run tests.")
            exit(1)
        test(user, comment_body, issue_url)
