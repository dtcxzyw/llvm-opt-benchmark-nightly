set -eo pipefail
git clone --branch v1.20.0 --depth 1 https://github.com/VirusTotal/yara-x.git
cd yara-x
cargo build --release --lib --bins
python3 $IR_COLLECT yara_x
