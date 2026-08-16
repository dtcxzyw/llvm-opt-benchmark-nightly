set -eo pipefail
git clone --branch 0.12.0 --depth 1 https://github.com/ibireme/yyjson.git
cd yyjson
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
