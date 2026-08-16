set -eo pipefail
git clone --branch v4.6.7 --depth 1 https://github.com/simdjson/simdjson.git
cd simdjson
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja
cmake --build . -j
