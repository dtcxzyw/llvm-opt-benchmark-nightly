set -eo pipefail
git clone --branch v0.22.0 --depth 1 https://github.com/google/jsonnet.git
cd jsonnet
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=OFF -DBUILD_TESTS=OFF -DBUILD_STATIC_LIBS=OFF -DBUILD_SHARED_BINARIES=OFF
cmake --build . -j
