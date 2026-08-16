set -eo pipefail
git clone --branch 0.11.25 --depth 1 https://github.com/mackron/miniaudio.git
cd miniaudio
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
