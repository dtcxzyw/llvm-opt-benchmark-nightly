set -eo pipefail
git clone --branch v1.83.0 --depth 1 --recursive https://github.com/grpc/grpc.git
cd grpc
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DgRPC_BUILD_TESTS=OFF
cmake --build . -j
