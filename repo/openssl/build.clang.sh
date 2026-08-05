set -eo pipefail
git clone --branch openssl-4.0.1 --recursive --depth 1 https://github.com/openssl/openssl.git
cd openssl
./Configure
make -j
