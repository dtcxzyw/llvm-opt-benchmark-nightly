set -eo pipefail
git clone --branch release-3.4.14 --depth 1 https://github.com/libsdl-org/SDL.git
cd SDL
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DSDL_ASSEMBLY=OFF -DSDL_TESTS=OFF -DSDL_EXAMPLES=OFF
cmake --build . -j
