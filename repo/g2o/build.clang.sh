set -eo pipefail
sudo apt install -y libeigen3-dev libcholmod5
git clone --branch master --depth 1 https://github.com/RainerKuemmerle/g2o.git
cd g2o
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja  -DBUILD_SHARED_LIBS=ON -DG2O_USE_OPENGL=OFF -DG2O_USE_LOGGING=OFF -DG2O_BUILD_EXAMPLES=OFF -DG2O_BUILD_APPS=OFF
cmake --build . -j
