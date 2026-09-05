set -eo pipefail
git clone --branch v1.2 --depth 1 https://github.com/zeux/meshoptimizer.git
cd meshoptimizer
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
