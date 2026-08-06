set -eo pipefail
git clone --branch z3-5.0.0 --depth 1 https://github.com/Z3Prover/z3.git
cd z3
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DZ3_INCLUDE_GIT_HASH=OFF -DZ3_ENABLE_EXAMPLE_TARGETS=OFF
cmake --build . -j
