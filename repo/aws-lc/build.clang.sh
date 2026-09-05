set -eo pipefail
sudo apt install -y golang-go
git clone --branch v5.8.0 --depth 1 https://github.com/aws/aws-lc.git
cd aws-lc
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_TESTING=OFF -DBUILD_TOOL=OFF
cmake --build . -j
