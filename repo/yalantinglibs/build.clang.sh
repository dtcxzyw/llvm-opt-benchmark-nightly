set -eo pipefail
git clone --branch main --depth 1 https://github.com/alibaba/yalantinglibs.git
cd yalantinglibs
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DBUILD_UNIT_TESTS=OFF
cmake --build . -j
