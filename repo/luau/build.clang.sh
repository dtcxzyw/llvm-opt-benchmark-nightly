set -eo pipefail
git clone --branch 0.732 --depth 1 https://github.com/luau-lang/luau.git
cd luau
sed -i 's/add_subdirectory(fuzz)//g' -i CMakeLists.txt
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DLUAU_BUILD_CLI=ON -DLUAU_BUILD_TESTS=OFF
cmake --build . -j
