set -eo pipefail
git clone --branch v3.11.2 --depth 1 https://github.com/influxdata/influxdb.git
cd influxdb
cargo build --release --lib --bins
python3 $IR_COLLECT
