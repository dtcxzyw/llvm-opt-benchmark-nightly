set -eo pipefail
git clone --branch v0.2.2 --depth 1 https://github.com/google/sentencepiece.git
cd sentencepiece
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DSPM_ENABLE_SHARED=OFF
cmake --build . -j
