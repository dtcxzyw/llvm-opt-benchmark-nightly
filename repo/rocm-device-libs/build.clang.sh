set -eo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
sudo apt install -y libclang-24-dev
git clone --branch amd-staging --depth 1 https://github.com/ROCm/llvm-project.git
cd llvm-project/amd/device-libs
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DCLANG_OPTIONS_APPEND="-fpass-plugin=$DIR/../../build/scripts/dataset/clang/preprocess.so"
cmake --build . -j -t ockl ocml
