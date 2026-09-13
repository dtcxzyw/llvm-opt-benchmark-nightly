set -eo pipefail
git clone --branch 0.11.0 --depth 1 https://github.com/huggingface/candle.git
cd candle
cargo build --release --lib --bins
python3 $IR_COLLECT
