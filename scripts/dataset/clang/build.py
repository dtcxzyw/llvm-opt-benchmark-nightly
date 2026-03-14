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
PLUGIN = os.path.join(ROOT_DIR, "build/scripts/dataset/clang/preprocess.so")
if not os.path.exists(PLUGIN):
    print(f"Plugin {PLUGIN} does not exist. Please build it first.")
    exit(1)

if __name__ == "__main__":
    proj = sys.argv[1]
    build_script = os.path.join(REPO_DIR, proj, "build.clang.sh")
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

    cc_wrapper = os.path.join(work_dir, "clang")
    with open(cc_wrapper, "w") as f:
        f.write("#!/bin/bash\nset -eo pipefail\n")
        f.write(f'clang -fpass-plugin={PLUGIN} "$@"\n')
    os.chmod(cc_wrapper, 0o755)

    cxx_wrapper = os.path.join(work_dir, "clang++")
    with open(cxx_wrapper, "w") as f:
        f.write("#!/bin/bash\nset -eo pipefail\n")
        f.write(f'clang++ -fpass-plugin={PLUGIN} "$@"\n')
    os.chmod(cxx_wrapper, 0o755)

    print("Running build script with clang wrapper...", flush=True)
    env = os.environ.copy()
    env["CC"] = cc_wrapper
    env["CXX"] = cxx_wrapper
    env["DUMP_PREFIX"] = data_dir
    subprocess.check_call(["bash", build_script], cwd=work_dir, env=env)
    print("Done.")
