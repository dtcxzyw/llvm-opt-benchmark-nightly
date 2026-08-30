set -eo pipefail
git clone --branch v1.2.0 --depth 1 https://github.com/google/brotli.git
cd brotli
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja  -DBUILD_SHARED_LIBS=ON
cmake --build . -j
