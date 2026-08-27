set -eo pipefail
git clone --branch 15.2.0 --depth 1 https://github.com/BurntSushi/ripgrep.git
cd ripgrep
cargo build --release --bins
python3 $IR_COLLECT grep
