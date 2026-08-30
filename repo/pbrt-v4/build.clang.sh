set -eo pipefail
git clone --branch master --recursive --depth 1 https://github.com/mmp/pbrt-v4.git
cd pbrt-v4
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja
cmake --build . -j
