set -eo pipefail
git clone --branch v2.42.0 --depth 1 https://github.com/rui314/mold.git
cd mold
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DMOLD_TARGETS="X86_64"
cmake --build . -j
