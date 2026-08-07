set -eo pipefail
git clone --branch 0.16.2 --depth 1 https://github.com/astral-sh/ruff.git
cd ruff
cargo build --release --lib --bins
python3 $IR_COLLECT
