set -eo pipefail
git clone --branch v1.12.0 --depth 1 https://github.com/rayon-rs/rayon.git
cd rayon
cargo build --release --lib --bins
python3 $IR_COLLECT
