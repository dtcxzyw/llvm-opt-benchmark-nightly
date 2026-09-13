set -eo pipefail
git clone --branch v0.59.1 --depth 1 https://github.com/apache/opendal.git
cd opendal/core
cargo build --release --lib --bins
python3 $IR_COLLECT
