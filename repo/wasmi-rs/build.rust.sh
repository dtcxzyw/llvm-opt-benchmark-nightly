set -eo pipefail
git clone --branch v2.0.0-beta.10 --depth 1 https://github.com/wasmi-labs/wasmi.git
cd wasmi
cargo build --release --lib --bins
python3 $IR_COLLECT
