set -eo pipefail
git clone --branch v3.4.0 --recursive --depth 1 https://github.com/dmlc/xgboost.git
cd xgboost
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DUSE_OPENMP=OFF -DCMAKE_INTERPROCEDURAL_OPTIMIZATION=OFF
cmake --build . -j
