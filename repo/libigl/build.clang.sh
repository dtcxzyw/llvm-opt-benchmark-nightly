set -eo pipefail
git clone --branch v2.6.0 --depth 1 https://github.com/libigl/libigl.git
cd libigl
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DLIBIGL_BUILD_TESTS=OFF -DLIBIGL_BUILD_TUTORIALS=OFF
cmake --build . -j
