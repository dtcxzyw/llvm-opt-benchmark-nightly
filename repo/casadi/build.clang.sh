set -eo pipefail
git clone --branch 3.7.2 --depth 1 https://github.com/casadi/casadi.git
cd casadi
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
