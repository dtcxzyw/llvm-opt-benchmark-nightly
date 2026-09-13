set -eo pipefail
git clone --branch v2.4.0 --depth 1 https://github.com/Keats/tera.git
cd tera
cargo build --release --lib --bins
python3 $IR_COLLECT
