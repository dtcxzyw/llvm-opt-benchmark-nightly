set -eo pipefail
git clone --branch 1.0.0 --depth 1 https://github.com/lief-project/LIEF.git
cd LIEF
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
