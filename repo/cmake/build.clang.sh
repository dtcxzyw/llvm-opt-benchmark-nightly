set -eo pipefail
git clone --branch v4.4.2 --depth 1 https://gitlab.kitware.com/cmake/cmake.git
cd cmake
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
