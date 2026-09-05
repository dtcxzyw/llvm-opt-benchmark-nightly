set -eo pipefail
git clone --branch develop --depth 1 https://github.com/llnl/zfp.git
cd zfp
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
