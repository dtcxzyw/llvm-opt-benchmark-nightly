set -eo pipefail
git clone --branch 0.17.2 --depth 1 https://github.com/rust-ndarray/ndarray.git
cd ndarray
cargo build --release --lib --bins
python3 $IR_COLLECT
