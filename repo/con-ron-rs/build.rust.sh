set -eo pipefail
git clone --branch master --depth 1 https://github.com/leanprover/con-ron.git
cd con-ron
cargo build --release --lib --bins
python3 $IR_COLLECT
