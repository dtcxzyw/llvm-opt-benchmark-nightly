set -eo pipefail
git clone --branch release-2.1.13-stable --depth 1 https://github.com/libevent/libevent.git
cd libevent
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DEVENT__DISABLE_TESTS=ON -DEVENT__DISABLE_BENCHMARK=ON -DEVENT__DISABLE_REGRESS=ON -DEVENT__DISABLE_SAMPLES=ON
cmake --build . -j
