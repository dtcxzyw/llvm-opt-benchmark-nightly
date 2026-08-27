set -eo pipefail
git clone --branch salsa-v0.28.2 --depth 1 https://github.com/salsa-rs/salsa.git
cd salsa
cargo build --release --lib --bins
python3 $IR_COLLECT
