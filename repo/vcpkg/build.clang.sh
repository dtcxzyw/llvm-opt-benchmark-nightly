set -eo pipefail
git clone --branch 2026-07-27 --depth 1 https://github.com/microsoft/vcpkg-tool.git
cd vcpkg-tool
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
