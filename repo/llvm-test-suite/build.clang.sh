set -eo pipefail
sudo apt update && sudo apt install -y tcl tcl-dev tk tk-dev tclsh
git clone --branch llvmorg-22.1.2 --depth 1 https://github.com/llvm/llvm-test-suite.git
cd llvm-test-suite
mkdir build && cd build
cmake .. -C../cmake/caches/O3.cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -DTEST_SUITE_BENCHMARKING_ONLY=ON
cmake --build . -j
