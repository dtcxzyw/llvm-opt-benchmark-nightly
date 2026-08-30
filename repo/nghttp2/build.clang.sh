set -eo pipefail
git clone --branch v1.70.0 --recursive --depth 1 https://github.com/nghttp2/nghttp2.git
cd nghttp2
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DENABLE_LIB_ONLY=ON -DENABLE_HTTP3=OFF -DENABLE_APP=OFF -DENABLE_DOC=OFF -DENABLE_WERROR=OFF -DENABLE_DEBUG=OFF
cmake --build . -j
