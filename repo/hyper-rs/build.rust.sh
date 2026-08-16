set -eo pipefail
git clone --branch v1.11.0 --depth 1 https://github.com/hyperium/hyper.git
cd hyper
cargo build --release --lib --bins
python3 $IR_COLLECT
