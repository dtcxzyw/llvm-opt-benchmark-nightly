set -eo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
git clone --branch v4.13.3 --depth 1 https://github.com/Immediate-Mode-UI/Nuklear.git
cd Nuklear
cp $DIR/CMakeLists.txt CMakeLists.txt
cp $DIR/unity.c unity.c
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja
cmake --build . -j
