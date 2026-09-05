set -eo pipefail
git clone --branch main --depth 1 https://github.com/recastnavigation/recastnavigation.git
cd recastnavigation
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
