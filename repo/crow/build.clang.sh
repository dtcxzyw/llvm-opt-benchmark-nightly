set -eo pipefail
sudo apt install -y libasio-dev
git clone --branch v1.3.3 --depth 1 https://github.com/CrowCpp/Crow.git
cd Crow
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DCROW_BUILD_EXAMPLES=ON -DCROW_BUILD_TESTS=OFF -DCROW_INSTALL=OFF
cmake --build . -j
