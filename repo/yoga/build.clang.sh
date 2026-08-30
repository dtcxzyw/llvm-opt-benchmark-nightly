set -eo pipefail
git clone --branch main --depth 1 https://github.com/react/yoga.git
cd yoga
sed -i 's/add_subdirectory(tests)//g' CMakeLists.txt
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
