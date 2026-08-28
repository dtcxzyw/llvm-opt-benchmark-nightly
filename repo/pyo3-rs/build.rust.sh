set -eo pipefail
git clone --branch v0.29.2 --depth 1 https://github.com/PyO3/pyo3.git
cd pyo3
cargo build --release --lib --bins
python3 $IR_COLLECT
