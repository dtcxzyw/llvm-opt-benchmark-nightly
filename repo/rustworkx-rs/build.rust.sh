set -eo pipefail
rustup component add rust-src --toolchain nightly-x86_64-unknown-linux-gnu
git clone --branch 0.18.1 --depth 1 https://github.com/Qiskit/rustworkx.git
cd rustworkx
cargo build --release --lib --bins
python3 $IR_COLLECT
