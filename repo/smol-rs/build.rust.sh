set -eo pipefail
git clone --branch master --depth 1 https://github.com/smol-rs/smol.git
cd smol
cargo build --release --lib --bins
python3 $IR_COLLECT
