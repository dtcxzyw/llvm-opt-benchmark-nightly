set -eo pipefail
git clone --branch 20260526.0 --depth 1 https://github.com/abseil/abseil-cpp.git
cd abseil-cpp
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DABSL_BUILD_TESTING=ON -DABSL_BUILD_TEST_HELPERS=ON -DABSL_USE_GOOGLETEST_HEAD=ON
cmake --build . -j
