set -eo pipefail
git clone --branch v6.0.4 --depth 1 https://github.com/assimp/assimp.git
cd assimp
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DASSIMP_BUILD_TESTS=OFF
cmake --build . -j
