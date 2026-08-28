set -eo pipefail
git clone --branch v0.16.1 --depth 1 https://github.com/maciejhirsz/logos.git
cd logos
cargo build --release --lib --bins
python3 $IR_COLLECT
