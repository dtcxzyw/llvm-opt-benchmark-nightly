set -eo pipefail
git clone --branch v1.0.151 --depth 1 https://github.com/serde-rs/json.git
cd json
cargo build --release --lib --bins
python3 $IR_COLLECT
