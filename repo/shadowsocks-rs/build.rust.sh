set -eo pipefail
git clone --branch v1.25.0 --depth 1 https://github.com/shadowsocks/shadowsocks-rust.git
cd shadowsocks-rust
cargo build --release --lib --bins
python3 $IR_COLLECT
