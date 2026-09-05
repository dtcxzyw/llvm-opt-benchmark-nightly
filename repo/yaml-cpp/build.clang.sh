set -eo pipefail
git clone --branch master --depth 1 https://github.com/jbeder/yaml-cpp.git
cd yaml-cpp
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DYAML_CPP_BUILD_TOOLS=OFF
cmake --build . -j
