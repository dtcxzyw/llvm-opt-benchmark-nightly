set -eo pipefail
git clone --branch 0.10.2 --depth 1 https://github.com/rust-random/rand.git
cd rand
cargo build --release --lib --bins
python3 $IR_COLLECT
