set -eo pipefail
git clone --branch v1.6.58 --depth 1 https://github.com/pnggroup/libpng.git
cd libpng
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DPNG_STATIC=OFF -DPNG_TESTS=OFF -DPNG_TOOLS=OFF
cmake --build . -j
