import os
import sys
import subprocess
import shutil

ROOT_DIR = os.path.dirname(
    os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
)
REPO_DIR = os.path.join(ROOT_DIR, "repo")
WORK_DIR = os.path.join(ROOT_DIR, "work")
DATA_DIR = os.path.join(ROOT_DIR, "data")

if __name__ == "__main__":
    proj = sys.argv[1]
    build_script = os.path.join(REPO_DIR, proj, "build.rust.sh")
    if not os.path.exists(build_script):
        print(f"Build script {build_script} does not exist.")
        exit(1)
    data_dir = os.path.join(DATA_DIR, proj, "original")
    if os.path.exists(data_dir):
        shutil.rmtree(data_dir)
    os.makedirs(data_dir)
    work_dir = os.path.join(WORK_DIR, proj)
    if os.path.exists(work_dir):
        shutil.rmtree(work_dir)
    os.makedirs(work_dir)

    print("Running build script with additional RUSTFLAGS...", flush=True)
    env = os.environ.copy()
    env["RUSTFLAGS"] = "-C save-temps"
    env["IR_COLLECT"] = os.path.join(ROOT_DIR, "scripts/dataset/rust/collect.py")
    env["DUMP_PREFIX"] = data_dir
    subprocess.check_call(["bash", build_script], cwd=work_dir, env=env)
    print("Done.")
