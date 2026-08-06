set -eo pipefail
git clone --branch v0.3.34 --depth 1 https://github.com/OpenMathLib/OpenBLAS.git
cd OpenBLAS
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=OFF -DBUILD_TESTING=OFF -DC_LAPACK=ON -DBUILD_DOUBLE=ON -DBUILD_TESTING=OFF -DCMAKE_C_FLAGS="-Wl,--unresolved-symbols=ignore-all"
cmake --build . -j
