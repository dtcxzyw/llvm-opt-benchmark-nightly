set -eo pipefail
sudo apt install -y libopenblas-dev
git clone --branch v1.15.0 --depth 1 https://github.com/facebookresearch/faiss.git
cd faiss
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DFAISS_ENABLE_GPU=OFF -DFAISS_ENABLE_C_API=ON -DFAISS_ENABLE_PYTHON=OFF
cmake --build . -j
