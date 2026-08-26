set -eo pipefail
git clone --branch v0.19.1 --depth 1 https://github.com/statrs-dev/statrs.git
cd statrs
cargo build --release --lib --bins
python3 $IR_COLLECT
