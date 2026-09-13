set -eo pipefail
git clone --branch 1.17.0 --depth 1 https://github.com/nickel-lang/nickel.git
cd nickel
cargo build --release --lib --bins
python3 $IR_COLLECT
