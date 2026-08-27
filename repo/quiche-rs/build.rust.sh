set -eo pipefail
git clone --branch 0.29.3 --depth 1 https://github.com/cloudflare/quiche.git
cd quiche
cargo build --release --lib --bins
python3 $IR_COLLECT
