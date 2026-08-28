set -eo pipefail
git clone --branch v0.34.0 --recursive --depth 1 https://github.com/gimli-rs/gimli.git
cd gimli
cargo build --release --lib --bins
python3 $IR_COLLECT
