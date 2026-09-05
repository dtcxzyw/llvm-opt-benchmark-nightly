set -eo pipefail
git clone --branch v4.0.0 --depth 1 https://github.com/skypjack/entt.git
cd entt
mkdir bench_build && cd bench_build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DENTT_BUILD_TESTING=ON -DENTT_BUILD_BENCHMARK=ON -DENTT_BUILD_EXAMPLE=ON -DENTT_FIND_GTEST_PACKAGE=ON
cmake --build . -j
