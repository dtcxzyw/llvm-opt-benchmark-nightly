set -eo pipefail
git clone --branch 0.10.0 --depth 1 https://github.com/uutils/coreutils.git
cd coreutils
cargo build --release --lib --bins
python3 $IR_COLLECT uu_
