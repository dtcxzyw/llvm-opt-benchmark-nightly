set -eo pipefail
git clone --branch v3.15.0a7 --depth 1 https://github.com/python/cpython.git
cd cpython
mkdir build && cd build
../configure
make -j
