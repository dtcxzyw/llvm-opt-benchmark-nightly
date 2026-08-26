set -eo pipefail
git clone --branch 4.8.1 --depth 1 https://github.com/fish-shell/fish-shell.git
cd fish-shell
cargo build --release --lib --bins
python3 $IR_COLLECT
