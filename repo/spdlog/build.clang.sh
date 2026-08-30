set -eo pipefail
git clone --branch v1.17.0 --depth 1 https://github.com/gabime/spdlog.git
cd spdlog
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DSPDLOG_BUILD_EXAMPLE=OFF
cmake --build . -j
