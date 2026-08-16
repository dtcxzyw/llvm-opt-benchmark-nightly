set -eo pipefail
git clone --branch v8.2.12 --depth 1 https://github.com/bdwgc/bdwgc.git
cd bdwgc
mkdir bench_build && cd bench_build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
