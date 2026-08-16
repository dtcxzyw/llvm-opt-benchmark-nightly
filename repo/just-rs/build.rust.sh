set -eo pipefail
git clone --branch 1.58.0 --depth 1 https://github.com/casey/just.git
cd just
cargo build --release --lib --bins
python3 $IR_COLLECT
