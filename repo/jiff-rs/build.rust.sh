set -eo pipefail
git clone --branch 0.2.35 --depth 1 https://github.com/BurntSushi/jiff.git
cd jiff
cargo build --release --lib --bins
python3 $IR_COLLECT
