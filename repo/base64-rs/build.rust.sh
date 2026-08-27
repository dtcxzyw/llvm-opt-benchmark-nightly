set -eo pipefail
git clone --branch v0.23.1 --depth 1 https://github.com/marshallpierce/rust-base64.git
cd rust-base64
cargo build --release --lib --bins
python3 $IR_COLLECT
