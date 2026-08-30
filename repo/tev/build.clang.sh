set -eo pipefail
sudo apt install -y libc++-dev nasm
git clone --branch v2.14.0 --recursive --depth 1 https://github.com/Tom94/tev.git
cd tev
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
