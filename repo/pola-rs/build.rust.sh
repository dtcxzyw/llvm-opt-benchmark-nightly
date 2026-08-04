set -eo pipefail
sudo apt install -y libpython3-dev
git clone --branch py-1.43.2 --depth 1 https://github.com/pola-rs/polars.git
cd polars
cargo build --release --lib --bins
python3 $IR_COLLECT
