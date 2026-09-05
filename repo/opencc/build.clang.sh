set -eo pipefail
git clone --branch ver.1.4.2 --depth 1 https://github.com/BYVoid/OpenCC.git
cd OpenCC
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DENABLE_DARTS=OFF
cmake --build . -j
