set -eo pipefail
git clone --branch v5.9.2-stable --depth 1 https://github.com/wolfSSL/wolfssl.git
cd wolfssl
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
