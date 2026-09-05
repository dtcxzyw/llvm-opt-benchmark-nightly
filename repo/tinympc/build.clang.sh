set -eo pipefail
git clone --branch main --depth 1 https://github.com/TinyMPC/TinyMPC.git
cd TinyMPC
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=OFF
cmake --build . -j
