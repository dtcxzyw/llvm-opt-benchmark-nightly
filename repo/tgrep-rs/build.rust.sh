set -eo pipefail
git clone --branch v1.0.8 --depth 1 https://github.com/microsoft/tgrep.git
cd tgrep
cargo build --release --lib --bins
python3 $IR_COLLECT
