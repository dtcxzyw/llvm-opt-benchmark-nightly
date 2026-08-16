set -eo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
git clone --branch v1.92.9b --depth 1 https://github.com/ocornut/imgui.git
cp $DIR/CMakeLists.txt CMakeLists.txt
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja
cmake --build . -j
