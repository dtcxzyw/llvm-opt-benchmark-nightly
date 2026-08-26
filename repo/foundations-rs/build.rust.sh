set -eo pipefail
git clone --branch v5.9.2 --recursive --depth 1 https://github.com/cloudflare/foundations.git
cd foundations
cargo build --release --lib --bins
python3 $IR_COLLECT
