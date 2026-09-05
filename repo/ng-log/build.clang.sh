set -eo pipefail
sudo apt install -y libgmock-dev
git clone --branch v0.8.4 --depth 1 https://github.com/ng-log/ng-log.git
cd ng-log
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
