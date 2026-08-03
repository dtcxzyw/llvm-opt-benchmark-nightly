set -eo pipefail
sudo apt install -y libreadline-dev
git clone --branch master --depth 1 https://github.com/berkeley-abc/abc.git
cd abc
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
