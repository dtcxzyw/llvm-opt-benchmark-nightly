set -eo pipefail
git clone --branch v1.26 --depth 1 https://github.com/ebiggers/libdeflate.git
cd libdeflate
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DLIBDEFLATE_BUILD_STATIC_LIB=OFF
cmake --build . -j
