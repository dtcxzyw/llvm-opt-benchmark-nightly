set -eo pipefail
git clone --branch v4.7.0 --recursive --depth 1 https://github.com/lightgbm-org/LightGBM.git
cd LightGBM
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
