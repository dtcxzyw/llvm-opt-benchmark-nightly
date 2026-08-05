set -eo pipefail
git clone --branch 2.2.0 --depth 1 https://github.com/HDFGroup/hdf5.git
cd hdf5
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DONLY_SHARED_LIBS=ON -DBUILD_STATIC_LIBS=OFF -DBUILD_TESTING=OFF -DHDF5_BUILD_EXAMPLES=OFF
cmake --build . -j
