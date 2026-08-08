set -eo pipefail
git clone --branch 20260526 --depth 1 https://github.com/Tencent/ncnn.git
cd ncnn
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DNCNN_BUILD_EXAMPLES=OFF
cmake --build . -j
