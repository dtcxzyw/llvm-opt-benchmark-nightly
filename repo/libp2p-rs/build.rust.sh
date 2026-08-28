set -eo pipefail
git clone --branch master --depth 1 https://github.com/libp2p/rust-libp2p.git
cd rust-libp2p
cargo build --release --lib --bins
python3 $IR_COLLECT
