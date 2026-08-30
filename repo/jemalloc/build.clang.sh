set -eo pipefail
git clone --branch 5.3.1 --depth 1 https://github.com/jemalloc/jemalloc.git
cd jemalloc
./autogen.sh
./configure --enable-shared
make -j
