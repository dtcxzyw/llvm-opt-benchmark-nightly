set -eo pipefail
sudo apt install -y libjemalloc-dev libsnappy-dev liblz4-dev
git clone --recurse-submodules --branch v11.8.0 --depth 1 https://github.com/facebook/rocksdb.git
cd rocksdb
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DWITH_RUNTIME_DEBUG=OFF -DWITH_JEMALLOC=ON \
  -DWITH_SNAPPY=ON -DWITH_LZ4=ON -DWITH_ZLIB=ON -DWITH_ZSTD=ON -DFAIL_ON_WARNINGS=OFF \
  -DWITH_BENCHMARK_TOOLS=OFF -DWITH_CORE_TOOLS=OFF -DWITH_TOOLS=OFF -DWITH_TESTS=OFF \
  -DWITH_ALL_TESTS=OFF -DWITH_TRACE_TOOLS=OFF
cmake --build . -j
