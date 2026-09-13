set -eo pipefail
git clone --branch v0.102.2 --depth 1 https://github.com/signalapp/libsignal.git
cd libsignal
cargo build --release --lib --bins
python3 $IR_COLLECT
