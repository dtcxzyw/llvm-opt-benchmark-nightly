set -eo pipefail
sudo apt install -y libtinyxml2-dev
git clone --branch master --depth 1 https://github.com/Chlumsky/msdfgen.git
cd msdfgen
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DMSDFGEN_USE_VCPKG=OFF -DMSDFGEN_USE_SKIA=OFF
cmake --build . -j
