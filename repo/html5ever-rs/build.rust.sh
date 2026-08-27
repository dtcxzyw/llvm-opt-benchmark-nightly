set -eo pipefail
git clone --branch main --depth 1 https://github.com/servo/html5ever.git
cd html5ever
cargo build --release --lib --bins
python3 $IR_COLLECT
