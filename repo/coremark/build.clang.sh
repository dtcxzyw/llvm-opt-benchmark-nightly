set -eo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
git clone --branch main --depth 1 https://github.com/eembc/coremark.git
cp $DIR/CMakeLists.txt CMakeLists.txt
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja
cmake --build . -j
