set -eo pipefail
git clone --branch 2026-07-27 --depth 1 https://github.com/rust-lang/rust-analyzer.git
cd rust-analyzer
cargo build --release --lib --bins
python3 $IR_COLLECT
