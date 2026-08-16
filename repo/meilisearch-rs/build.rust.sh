set -eo pipefail
git clone --branch v1.53.1 --depth 1 https://github.com/meilisearch/meilisearch.git
cd meilisearch
cargo build --release --lib --bins
python3 $IR_COLLECT
