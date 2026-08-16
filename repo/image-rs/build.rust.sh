set -eo pipefail
git clone --branch v0.25.10 --depth 1 https://github.com/image-rs/image.git
cd image
cargo build --release --lib --bins
python3 $IR_COLLECT
