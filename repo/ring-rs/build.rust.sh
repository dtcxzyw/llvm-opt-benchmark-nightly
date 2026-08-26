set -eo pipefail
git clone --branch main --depth 1 https://github.com/briansmith/ring.git
cd ring
cargo build --release --lib --bins
python3 $IR_COLLECT
