set -eo pipefail
git clone --branch v3.4.0 --depth 1 https://github.com/google/double-conversion.git
cd double-conversion
sed -i 's/cmake_minimum_required(VERSION 3\.29\.\.\.4\.0\.1)/cmake_minimum_required(VERSION 3.28)/' CMakeLists.txt
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
