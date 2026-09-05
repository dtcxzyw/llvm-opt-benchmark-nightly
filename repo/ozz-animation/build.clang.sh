set -eo pipefail
git clone --branch 0.17.0 --depth 1 https://github.com/guillaumeblanc/ozz-animation.git
cd ozz-animation
sed -i 's/cmake_minimum_required(VERSION 3.30)/cmake_minimum_required(VERSION 3.28)/' CMakeLists.txt
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -Dozz_build_samples=OFF -Dozz_build_howtos=OFF -Dozz_build_tests=OFF -DCMAKE_CXX_FLAGS="-mavx2"
cmake --build . -j
