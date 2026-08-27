set -eo pipefail
git clone --branch v1.19.0 --depth 1 https://github.com/qdrant/qdrant.git
cd qdrant
cargo build --profile perf --bins
python3 $IR_COLLECT
