import os
import subprocess
import shutil
import multiprocessing as mp

DUMP_PREFIX = os.environ["DUMP_PREFIX"]


_KEYWORDS = None
_DUMP_PREFIX = None


def _init_worker(keywords, dump_prefix):
    global _KEYWORDS, _DUMP_PREFIX
    _KEYWORDS = keywords
    _DUMP_PREFIX = dump_prefix


def _process_file(file_path: str) -> None:
    try:
        symbols = subprocess.check_output(
            ["llvm-nm", file_path, "--defined-only", "--demangle"],
            text=True,
            stderr=subprocess.DEVNULL,
        )
        if any(keyword in symbols for keyword in _KEYWORDS):
            shutil.move(
                file_path,
                os.path.join(
                    _DUMP_PREFIX,
                    os.path.basename(file_path).replace(".rcgu.no-opt.bc", ".bc"),
                ),
            )
    except Exception:
        pass


if __name__ == "__main__":
    crates_output = subprocess.check_output(
        ["cargo", "tree", "--depth", "0", "--format", "@@{p}@@"], text=True
    )
    crates_info = [
        line.strip("@")
        for line in crates_output.splitlines()
        if line.startswith("@@") and "proc-macro" not in line
    ]
    keywords = []
    for crate in crates_info:
        crate_name = crate.split()[0]
        keywords.append(crate_name)

    print(f"Collecting IR for crates: {', '.join(keywords)}")
    tasks = []
    for root, _, files in os.walk("target"):
        for file in files:
            if not file.endswith(".rcgu.no-opt.bc"):
                continue
            file_path = os.path.join(root, file)
            tasks.append(file_path)

    jobs = int(os.environ.get("COLLECT_JOBS", "0"))
    if jobs <= 0:
        jobs = os.cpu_count() or 1

    with mp.Pool(
        processes=jobs, initializer=_init_worker, initargs=(keywords, DUMP_PREFIX)
    ) as pool:
        for _ in pool.imap_unordered(_process_file, tasks, chunksize=16):
            pass
