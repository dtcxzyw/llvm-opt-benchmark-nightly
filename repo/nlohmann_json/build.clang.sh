set -eo pipefail
git clone --branch v3.12.0 --depth 1 https://github.com/nlohmann/json.git
cd json
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
