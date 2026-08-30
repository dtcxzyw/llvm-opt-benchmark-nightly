set -eo pipefail
git clone --branch 4.1.0 --depth 1 https://github.com/ngcpp/proxy.git
cd proxy
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_TESTING=ON
cmake --build . -j
