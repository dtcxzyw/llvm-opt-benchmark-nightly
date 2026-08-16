set -eo pipefail
git clone --branch 0.4.33 --depth 1 https://github.com/rust-lang/log.git
cd log
cargo build --release --lib --bins
python3 $IR_COLLECT
