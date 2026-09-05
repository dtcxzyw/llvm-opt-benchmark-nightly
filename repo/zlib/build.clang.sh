set -eo pipefail
git clone --branch v1.3.2 --depth 1 https://github.com/madler/zlib.git
cd zlib
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j -t zlib
