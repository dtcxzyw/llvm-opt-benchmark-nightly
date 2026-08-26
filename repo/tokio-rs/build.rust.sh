set -eo pipefail
git clone --branch tokio-1.53.1 --depth 1 https://github.com/tokio-rs/tokio.git
cd tokio
cargo build --release --lib --bins
python3 $IR_COLLECT
