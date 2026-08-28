set -eo pipefail
git clone --branch master --depth 1 https://github.com/tikv/raft-rs.git
cd raft-rs
cargo build --release --lib --bins
python3 $IR_COLLECT
