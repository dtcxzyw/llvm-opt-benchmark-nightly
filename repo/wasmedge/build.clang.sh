set -eo pipefail
sudo apt install -y liblld-24-dev
git clone --branch 0.17.1 --depth 1 https://github.com/WasmEdge/WasmEdge.git
cd WasmEdge
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DWASMEDGE_BUILD_SHARED_LIB=ON -DWASMEDGE_USE_LLVM=ON -DWASMEDGE_FORCE_DISABLE_LTO=ON -DWASMEDGE_PLUGIN_WASI_NN_GGML_LLAMA_NATIVE=OFF -DWASMEDGE_BUILD_TOOLS=OFF
cmake --build . -j
