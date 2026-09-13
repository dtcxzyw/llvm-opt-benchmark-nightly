set -eo pipefail
git clone --branch fontc-v1.0.0 --depth 1 https://github.com/googlefonts/fontc.git
cd fontc
cargo build --release --lib --bins
python3 $IR_COLLECT
