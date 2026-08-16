set -eo pipefail
git clone --branch 6.0 --depth 1 https://github.com/raysan5/raylib.git
cd raylib
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DBUILD_EXAMPLES=OFF
cmake --build . -j
