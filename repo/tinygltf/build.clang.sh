set -eo pipefail
git clone --branch v3.0.1 --depth 1 https://github.com/syoyo/tinygltf.git
cd tinygltf
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
