set -eo pipefail
git clone --branch 14.3.1 --depth 1 https://github.com/harfbuzz/harfbuzz.git
cd harfbuzz
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DHB_BUILD_UTILS=OFF
cmake --build . -j
