set -eo pipefail
git clone --branch v1.6.0 --depth 1 https://github.com/huggingface/xet-core.git
cd xet-core
cargo build --release --lib --bins --config 'profile.release.lto=false' --config 'profile.release.debug=0'
python3 $IR_COLLECT
