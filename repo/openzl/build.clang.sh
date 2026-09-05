set -eo pipefail
git clone --branch dev --depth 1 https://github.com/facebook/openzl.git
cd openzl
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DOPENZL_BUILD_SHARED_LIBS=ON -DOPENZL_INSTALL=OFF -DOPENZL_BUILD_TOOLS=OFF -DOPENZL_BUILD_CLI=OFF -DOPENZL_BUILD_EXAMPLES=OFF -DOPENZL_BUILD_CUSTOM_PARSERS=OFF
cmake --build . -j
