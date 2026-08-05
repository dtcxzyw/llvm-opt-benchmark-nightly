set -eo pipefail
git clone --branch v5.050 --depth 1 https://github.com/verilator/verilator.git
cd verilator
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DOBJCACHE_ENABLED=OFF
cmake --build . -j
