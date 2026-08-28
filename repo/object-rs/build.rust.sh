set -eo pipefail
git clone --branch v0.40.0 --depth 1 https://github.com/gimli-rs/object.git
cd object
cargo build --release --lib --bins
python3 $IR_COLLECT
