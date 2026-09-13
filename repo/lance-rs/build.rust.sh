set -eo pipefail
git clone --branch v11.0.0 --depth 1 https://github.com/lance-format/lance.git
cd lance
cargo build --release --lib --bins
python3 $IR_COLLECT
