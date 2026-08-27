set -eo pipefail
git clone --branch quinn-proto-0.11.17 --depth 1 https://github.com/quinn-rs/quinn.git
cd quinn
cargo build --release --lib --bins
python3 $IR_COLLECT
