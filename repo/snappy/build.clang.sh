set -eo pipefail
git clone --branch 1.2.2 --recursive --depth 1 https://github.com/google/snappy.git
cd snappy
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DSNAPPY_BUILD_TESTS=OFF -DSNAPPY_BUILD_BENCHMARKS=OFF
cmake --build . -j
