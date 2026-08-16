set -eo pipefail
git clone --branch v1.16 --depth 1 https://github.com/zeux/pugixml.git
cd pugixml
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
