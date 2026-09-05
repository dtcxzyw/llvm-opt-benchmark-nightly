set -eo pipefail
git clone --branch v0.9.3 --depth 1 https://github.com/eclipse-iceoryx/iceoryx2.git
cd iceoryx2
cargo build --release --lib --bins
python3 $IR_COLLECT
