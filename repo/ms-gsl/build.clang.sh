set -eo pipefail
git clone --branch v5.0.0 --depth 1 https://github.com/microsoft/GSL.git
cd GSL
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DCMAKE_CXX_FLAGS="-Wno-lifetime-safety-intra-tu-constructor-suggestions -Wno-lifetime-safety-intra-tu-suggestions" -DGSL_INSTALL=OFF
cmake --build . -j
