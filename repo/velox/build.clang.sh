set -eo pipefail
sudo apt update && sudo apt install -y libdouble-conversion-dev libevent-dev
git clone --branch v2026.03.13.00 --depth 1 https://github.com/facebookincubator/velox.git
cd velox
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DVELOX_BUILD_TESTING=OFF -DVELOX_BUILD_MINIMAL=ON -DVELOX_DISABLE_GOOGLETEST=ON
cmake --build . -j
