set -eo pipefail
sudo apt install -y libboost-iostreams-dev libtbb-dev libblosc-dev
git clone --branch master --depth 1 https://github.com/AcademySoftwareFoundation/openvdb.git
cd openvdb
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja
cmake --build . -j -t openvdb_shared
