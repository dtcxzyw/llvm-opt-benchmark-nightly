set -eo pipefail
git clone --branch python-v1.5.0 --depth 1 https://github.com/delta-io/delta-rs.git
cd delta-rs
cargo build --release --lib --bins
python3 $IR_COLLECT
