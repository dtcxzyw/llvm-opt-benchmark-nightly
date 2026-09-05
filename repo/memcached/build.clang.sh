set -eo pipefail
git clone --branch 1.6.45 --depth 1 https://github.com/memcached/memcached.git
cd memcached
./autogen.sh
./configure --disable-coverage --disable-docs
make -j
