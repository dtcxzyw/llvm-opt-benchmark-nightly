# uv run scripts/ci.py update
# uv run scripts/ci.py test # with env USER/COMMENT_BODY/ISSUE_URL

from dataclasses import dataclass
import os
import argparse
import shutil
import subprocess
import authorized_users
import huggingface_hub
from tenacity import retry, stop_after_attempt, wait_exponential_jitter
from pathlib import Path
from urllib.parse import urlparse
import requests

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
LLVM_REPO = os.path.join(ROOT_DIR, "work/llvm-project")
LLVM_BUILD_DIR = os.path.join(ROOT_DIR, "work/llvm-build")
OPT_OUT_DIR = os.path.join(ROOT_DIR, "work/opt-out")
LLVM_REPO_URL = "https://github.com/llvm/llvm-project.git"
DATA_DIR = os.path.join(ROOT_DIR, "data")
REPORT_DIR = os.path.join(ROOT_DIR, "report")
HF_URL = "hf://buckets/llvm-opt-benchmark/llvm-opt-benchmark"
JOB_ID = os.environ["GITHUB_RUN_ID"]
GH_TOKEN = os.environ["GITHUB_TOKEN"]


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
    subprocess.check_call(["git", "clean", "-fdx"], cwd=LLVM_REPO)
    subprocess.check_call(["git", "fetch"], cwd=LLVM_REPO)
    subprocess.check_call(["git", "checkout", revision], cwd=LLVM_REPO)


@retry(stop=stop_after_attempt(5), wait=wait_exponential_jitter(initial=1, max=10))
def reply_issue_comment(
    issue_url: str, original_comment: str, append_comment: str, user: str
):
    full_comment = f"> {original_comment}\n\n@{user} {append_comment}"
    # Use gh cli to post the comment.
    subprocess.check_call(["gh", "issue", "comment", issue_url, "--body", full_comment])


def create_pr():
    subprocess.check_call(["git", "checkout", "-b", f"task-{JOB_ID}"], cwd=LLVM_REPO)


def setup_base_environment() -> str:
    sync_dataset_from_remote()
    llvm_revision = Path(os.path.join(DATA_DIR, "LLVM_VERSION")).read_text()
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
            "-DLLVM_TARGETS_TO_BUILD='X86'",
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
        subprocess.check_call(
            ["cmake", "--build", ".", "-j", "-t", "opt"],
            cwd=LLVM_BUILD_DIR,
            timeout=3600,
        )
    except Exception:
        return False
    return True


@retry(stop=stop_after_attempt(5), wait=wait_exponential_jitter(initial=1, max=10))
def get_llvm_patch(patch_url: str) -> str:
    if not patch_url.endswith(".diff"):
        patch_url += ".diff"
    session = requests.Session()
    session.headers.update(
        {
            "X-GitHub-Api-Version": "2022-11-28",
            "Authorization": f"Bearer {GH_TOKEN}",
            "Accept": "application/vnd.github+json",
        }
    )
    return session.get(patch_url, timeout=120).text


def apply_llvm_patch(patch_url: str) -> bool:
    patch_content = get_llvm_patch(patch_url)
    patch_file = os.path.join(REPORT_DIR, "patch.diff")
    with open(patch_file, "w") as f:
        f.write(patch_content)
    result = subprocess.call(
        [
            "git",
            "apply",
            "-3",
            patch_file,
            "--include=llvm/lib/*",
            "--include=llvm/include/*",
        ],
        cwd=LLVM_REPO,
    )
    if result != 0:
        return False
    # If nothing is applied, it also returns 0, so we need to check if there are any changes after applying the patch.
    result = (
        subprocess.check_output(["git", "diff", "--name-only"], cwd=LLVM_REPO)
        .decode()
        .strip()
    )
    return bool(result)


def run_opt(config: TestConfig):
    log_file = os.path.join(REPORT_DIR, "opt.log")
    stat_file = os.path.join(REPORT_DIR, "stats.json")
    if os.path.exists(OPT_OUT_DIR):
        shutil.rmtree(OPT_OUT_DIR)
    os.makedirs(OPT_OUT_DIR)

    pass


def update():
    old_revision = setup_base_environment()
    new_revision = update_llvm()
    if old_revision == new_revision:
        print("LLVM is already up to date.")
        return
    config = TestConfig()
    if not build_llvm(config):
        print("Failed to build LLVM with the latest revision.")
        return
    run_opt(config)


def test(user: str, comment_body: str, issue_url: str):
    old_revision = setup_base_environment()
    comment_body = comment_body.strip()
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
        config = TestConfig(comptime=False, stats=None)
        patch_url = comment_body

    try:
        res = urlparse(patch_url)
        if res.scheme != "https":
            print(f"Please provide a valid HTTPS URL: {patch_url}")
            return
        if res.netloc != "github.com":
            print(f"Please provide a valid GitHub URL: {patch_url}")
            return
        patch_url = res.path.removeprefix("/")
    except Exception:
        print(f"Invalid patch URL: {patch_url}")
        return

    patch_name = patch_url.removeprefix("llvm/llvm-project/pull/")
    if not apply_llvm_patch(patch_url):
        reply_issue_comment(
            issue_url,
            comment_body,
            f"The patch cannot be applied cleanly. Please make sure the patch is based on the latest main branch (or {old_revision}) and does not have conflicts.",
            user,
        )
        return
    if not build_llvm(config):
        reply_issue_comment(
            issue_url,
            comment_body,
            f"Failed to build LLVM with the patch applied (base commit {old_revision}). Please check if the patch can be built successfully.",
            user,
        )
        return
    run_opt(config)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="CI script for llvm-opt-benchmark")
    parser.add_argument("command", choices=["update", "test"], help="Command to run")
    args = parser.parse_args()

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
