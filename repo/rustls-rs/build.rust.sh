set -eo pipefail
git clone --branch v/0.23.43 --depth 1 https://github.com/rustls/rustls.git
cd rustls
cargo build --release --lib --bins
python3 $IR_COLLECT
