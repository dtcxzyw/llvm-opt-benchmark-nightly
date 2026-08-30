set -eo pipefail
git clone --branch v3.5.0 --depth 1 https://github.com/microsoft/mimalloc.git
cd mimalloc
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DMI_BUILD_TESTS=OFF -DMI_BUILD_SHARED=OFF -DMI_BUILD_OBJECT=OFF
cmake --build . -j
