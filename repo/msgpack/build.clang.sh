set -eo pipefail
git clone --branch cpp_master --depth 1 https://github.com/msgpack/msgpack-c.git
cd msgpack-c
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja  -DBUILD_SHARED_LIBS=ON -DMSGPACK_CXX20=ON -DMSGPACK_BUILD_DOCS=OFF -DMSGPACK_BUILD_EXAMPLES=ON
cmake --build . -j
