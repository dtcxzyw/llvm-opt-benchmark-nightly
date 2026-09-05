set -eo pipefail
git clone --branch v25.12.19-2026-02-06-03fffb2 --depth 1 https://github.com/google/flatbuffers.git
cd flatbuffers
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DFLATBUFFERS_BUILD_TESTS=OFF
cmake --build . -j
