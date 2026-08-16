set -eo pipefail
git clone --branch dev --depth 1 https://github.com/facebook/zstd.git
cd zstd
mkdir bench_build && cd bench_build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja
cmake --build . -j -t libzstd_shared
