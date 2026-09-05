set -eo pipefail
git clone --branch v9.0.38 --depth 1 https://github.com/google/libphonenumber.git
cd libphonenumber
mkdir build && cd build
cmake ../cpp -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DBUILD_TESTING=OFF
cmake --build . -j
