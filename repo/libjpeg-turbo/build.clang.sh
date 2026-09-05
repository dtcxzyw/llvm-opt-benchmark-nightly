set -eo pipefail
git clone --branch 3.2.0 --depth 1 https://github.com/libjpeg-turbo/libjpeg-turbo.git
cd libjpeg-turbo
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DENABLE_SHARED=ON -DENABLE_STATIC=OFF
cmake --build . -j
