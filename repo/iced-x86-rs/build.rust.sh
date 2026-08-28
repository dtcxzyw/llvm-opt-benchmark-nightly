set -eo pipefail
git clone --branch master --depth 1 https://github.com/icedland/iced.git
cd iced/src/rust
cargo build --release --lib --bins
python3 $IR_COLLECT iced_x86
