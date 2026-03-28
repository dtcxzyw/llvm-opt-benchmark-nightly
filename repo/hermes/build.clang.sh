set -eo pipefail
git clone --branch hermes-v0.16.0 --depth 1 https://github.com/facebook/hermes.git
cd hermes
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DHAVE_GC_SECTIONS=OFF -DBUILD_SHARED_LIBS=ON -DHERMES_ENABLE_TEST_SUITE=OFF -DHERMES_ENABLE_DEBUGGER=OFF -DHERMES_CHECK_NATIVE_STACK=OFF -DHERMES_ENABLE_TOOLS=ON
cmake --build . -j
