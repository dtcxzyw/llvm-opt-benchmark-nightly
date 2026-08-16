set -eo pipefail
git clone --branch master --depth 1 https://github.com/DaveGamble/cJSON.git
cd cJSON
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DENABLE_CJSON_UTILS=ON
cmake --build . -j
