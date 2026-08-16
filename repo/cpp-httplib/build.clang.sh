set -eo pipefail
git clone --branch v0.53.1 --depth 1 https://github.com/yhirose/cpp-httplib.git
cd cpp-httplib
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DHTTPLIB_COMPILE=ON
cmake --build . -j
