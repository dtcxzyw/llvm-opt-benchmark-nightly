set -eo pipefail
git clone --branch master --depth 1 https://github.com/rust-lang/regex.git
cd regex
cargo build --release --lib --bins
python3 $IR_COLLECT
