set -eo pipefail
git clone --branch v0.16.1 --recursive --depth 1 https://github.com/quickjs-ng/quickjs.git
cd quickjs
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DQJS_ENABLE_INSTALL=OFF
cmake --build . -j
