set -eo pipefail
git clone --branch v0.15.1 --depth 1 https://github.com/typst/typst.git
cd typst
cargo build --release --bins
python3 $IR_COLLECT typst
