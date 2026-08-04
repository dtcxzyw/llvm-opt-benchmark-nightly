set -eo pipefail
git clone --branch curl-8_21_0 --depth 1 https://github.com/curl/curl.git
cd curl
autoreconf -fi
./configure --with-openssl
make -j
