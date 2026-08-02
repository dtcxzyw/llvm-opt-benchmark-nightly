set -eo pipefail
sudo apt install -y libboost-dev libboost-context-dev libboost-filesystem-dev \
  libboost-program-options-dev libboost-system-dev libboost-thread-dev libboost-regex-dev \
  libboost-chrono-dev libfmt-dev libgoogle-glog-dev
git clone --branch v2026.07.27.00 --depth 1 https://github.com/facebook/folly.git
git clone --branch v8.2.10 --depth 1 https://github.com/fastfloat/fast_float.git
cd folly
mkdir cmake-build && cd cmake-build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DFASTFLOAT_INCLUDE_DIR=$(pwd)/../../fast_float/include
cmake --build . -j
