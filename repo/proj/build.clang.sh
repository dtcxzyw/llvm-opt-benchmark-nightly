set -eo pipefail
sudo apt install -y sqlite3
git clone --branch 9.8.1 --depth 1 https://github.com/OSGeo/PROJ.git
cd PROJ
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DRUN_NETWORK_DEPENDENT_TESTS=OFF -DTESTING_USE_NETWORK=OFF
cmake --build . -j
