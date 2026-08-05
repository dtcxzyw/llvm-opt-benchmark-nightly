set -eo pipefail
git clone --branch v2.3.11 --depth 1 https://github.com/diesel-rs/diesel.git
cd diesel
cargo build --release --lib --bins
python3 $IR_COLLECT
