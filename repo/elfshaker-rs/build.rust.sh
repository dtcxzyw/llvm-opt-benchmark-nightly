set -eo pipefail
git clone --branch main --depth 1 https://github.com/elfshaker/elfshaker.git
cd elfshaker
cargo build --release --lib --bins
python3 $IR_COLLECT
