set -eo pipefail
git clone --branch v1.52.1 --depth 1 https://github.com/libuv/libuv.git
cd libuv
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DLIBUV_BUILD_TESTS=OFF
cmake --build . -j
