set -eo pipefail
git clone --branch v7.8.0 --depth 1 https://github.com/llnl/sundials.git
cd sundials
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=OFF
cmake --build . -j
