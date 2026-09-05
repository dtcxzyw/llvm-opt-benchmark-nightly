set -eo pipefail
git clone --branch v2.2.0 --depth 1 https://github.com/pocketpy/pocketpy.git
cd pocketpy
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DPK_BUILD_SHARED_LIB=ON -DPK_BUILD_WITH_UNITY=OFF -DPK_ENABLE_OS=ON -DCMAKE_C_FLAGS="-Wno-implicit-function-declaration"
cmake --build . -j
