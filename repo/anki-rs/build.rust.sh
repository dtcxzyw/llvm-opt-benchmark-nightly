set -eo pipefail
sudo apt install -y protobuf-compiler libprotobuf-dev
git clone --branch 26.08.1 --recursive --depth 1 https://github.com/ankitects/anki.git
cd anki
export PROTOC=protoc
cargo build --release --lib --bins
python3 $IR_COLLECT
