set -eo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
git clone --branch master --depth 1 https://github.com/marzer/tomlplusplus.git
cp $DIR/CMakeLists.txt CMakeLists.txt
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
