set -eo pipefail
git clone --branch dev --depth 1 https://github.com/lz4/lz4.git
cd lz4
mkdir bench_build && cd bench_build
cmake ../build/cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
