import os
import sys
import subprocess
from concurrent.futures import ThreadPoolExecutor, as_completed

try:
    from tqdm import tqdm  # type: ignore
except ImportError:  # pragma: no cover
    tqdm = None

DATA_DIR = os.path.join(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "data"
)
OPT_BINARY = sys.argv[1]
if not os.path.exists(OPT_BINARY):
    print(f"Opt binary {OPT_BINARY} does not exist.")
    exit(1)

if len(sys.argv) > 2:
    tasks = sys.argv[2:]
else:
    tasks = os.listdir(DATA_DIR)

subtasks = []
for proj in tasks:
    original_dir = os.path.join(DATA_DIR, proj, "original")
    if not os.path.exists(original_dir):
        continue
    optimized_dir = os.path.join(DATA_DIR, proj, "optimized")
    os.makedirs(optimized_dir, exist_ok=True)
    for file in os.listdir(original_dir):
        if not file.endswith(".bc"):
            continue
        subtasks.append((proj, file))


def _run_opt(subtask: tuple[str, str]) -> None:
    proj, file = subtask
    input_path = os.path.join(DATA_DIR, proj, "original", file)
    optimized_path = os.path.join(DATA_DIR, proj, "optimized", file)
    output_path = optimized_path
    if os.path.exists(optimized_path):
        output_path = output_path + ".tmp"
    subprocess.check_call([OPT_BINARY, "-O3", input_path, "-o", output_path])
    if output_path != optimized_path:
        # Use cmp to check if the optimized file is different from the previous one.
        # If they are the same, keep the previous one to avoid updating the mtime.
        # Otherwise, replace it with the new one.
        if (
            subprocess.call(
                ["cmp", "-s", output_path, optimized_path],
                stderr=subprocess.DEVNULL,
                stdout=subprocess.DEVNULL,
            )
            != 0
        ):
            os.rename(output_path, optimized_path)
        else:
            os.remove(output_path)


jobs_env = os.environ.get("OPT_BENCH_JOBS", "")
try:
    jobs = int(jobs_env) if jobs_env else 0
except ValueError:
    jobs = 0
if jobs <= 0:
    jobs = os.cpu_count() or 1

with ThreadPoolExecutor(max_workers=jobs) as executor:
    futures = {executor.submit(_run_opt, subtask): subtask for subtask in subtasks}
    iterator = as_completed(futures)
    if tqdm is not None:
        iterator = tqdm(iterator, total=len(futures), desc="Optimizing", unit="file")
    for future in iterator:
        subtask = futures[future]
        try:
            future.result()
        except Exception:
            for f in futures:
                f.cancel()
            proj, file = subtask
            print(f"Failed optimizing {proj}/{file}", file=sys.stderr)
            raise
