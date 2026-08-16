set -eo pipefail
git clone --branch v4.6.6 --depth 1 https://github.com/clap-rs/clap.git
cd clap
cargo build --release --lib --bins
python3 $IR_COLLECT
