set -eo pipefail
git clone --branch 1.0.22-RELEASE --depth 1 https://github.com/jedisct1/libsodium.git
cd libsodium
autoreconf -fi
./configure
make -j
