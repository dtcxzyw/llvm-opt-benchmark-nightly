set -eo pipefail
git clone --branch 0.8.1 --depth 1 https://github.com/cloudflare/pingora.git
cd pingora
cargo build --release --lib --bins
python3 $IR_COLLECT
