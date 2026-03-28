set -eo pipefail
git clone --branch v1.5.1 --depth 1 https://github.com/duckdb/duckdb.git
cd duckdb
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_UNITTESTS=OFF -DBUILD_SHELL=OFF
cmake --build . -j
