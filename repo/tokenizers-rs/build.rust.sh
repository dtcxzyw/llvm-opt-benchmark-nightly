set -eo pipefail
git clone --branch v0.23.1 --depth 1 https://github.com/huggingface/tokenizers.git
cd tokenizers/tokenizers
cargo build --release --lib --bins
python3 $IR_COLLECT
