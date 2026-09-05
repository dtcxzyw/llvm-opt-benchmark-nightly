set -eo pipefail
git clone --branch master --depth 1 https://github.com/csmith-project/csmith.git
cd csmith
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja
cmake --build . -j
