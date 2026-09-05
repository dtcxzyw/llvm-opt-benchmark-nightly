set -eo pipefail
git clone --branch main --depth 1 https://github.com/erincatto/box2d.git
cd box2d
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBOX2D_UNIT_TESTS=OFF -DBOX2D_SAMPLES=OFF -DBUILD_SHARED_LIBS=ON
cmake --build . -j
