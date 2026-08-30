set -eo pipefail
sudo apt install -y libnuma-dev
git clone --branch v4.2.0 --depth 1 https://github.com/QuEST-Kit/QuEST.git
cd QuEST
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
