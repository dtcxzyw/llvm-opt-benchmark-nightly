set -eo pipefail
git clone --branch 2.3.3 --depth 1 https://github.com/zlib-ng/zlib-ng.git
cd zlib-ng
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DBUILD_TESTING=OFF -DWITH_SANITIZER=Undefined
cmake --build . -j
