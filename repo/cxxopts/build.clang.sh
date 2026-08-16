set -eo pipefail
git clone --branch v3.3.1 --depth 1 https://github.com/jarro2783/cxxopts.git
cd cxxopts
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DCXXOPTS_BUILD_TESTS=OFF
cmake --build . -j
