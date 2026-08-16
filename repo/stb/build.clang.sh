set -eo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
git clone --branch master --depth 1 https://github.com/nothings/stb.git
cp $DIR/CMakeLists.txt CMakeLists.txt
cp $DIR/*.c .
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja
cmake --build . -j
