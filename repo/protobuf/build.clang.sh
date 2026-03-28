set -eo pipefail
git clone --recurse-submodules --branch v34.1 --depth 1 https://github.com/protocolbuffers/protobuf.git
cd protobuf
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -Dprotobuf_BUILD_TESTS=OFF -DBUILD_SHARED_LIBS=ON -Dprotobuf_ABSL_PROVIDER=module
cmake --build . -j
