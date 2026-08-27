set -eo pipefail
git clone --branch master --depth 1 https://github.com/cessen/ropey.git
cd ropey
cargo build --release --lib --bins
python3 $IR_COLLECT
