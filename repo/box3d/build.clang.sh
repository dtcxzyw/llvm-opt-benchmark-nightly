set -eo pipefail
git clone --branch main --depth 1 https://github.com/erincatto/box3d.git
cd box3d
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBOX3D_VALIDATE=OFF -DBOX3D_SAMPLES=OFF -DBOX3D_UNIT_TESTS=OFF -DBUILD_SHARED_LIBS=ON
cmake --build . -j
