set -eo pipefail
git clone --branch 3.0.3 --depth 1 https://github.com/dtolnay/syn.git
cd syn
cargo build --release --lib --bins
python3 $IR_COLLECT
