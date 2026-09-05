set -eo pipefail
git clone --branch v3.0.1 --recursive --depth 1 https://github.com/wjakob/nanobind.git
cd nanobind
sed "s/nanobind_lto(/\#nanobind_lto(/g" -i cmake/nanobind-config.cmake
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DNB_TEST=ON -DNB_TEST_SHARED_BUILD=ON
cmake --build . -j
