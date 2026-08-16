set -eo pipefail
git clone --branch 12.2.0 --depth 1 https://github.com/fmtlib/fmt.git
cd fmt
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DFMT_DOC=OFF -DFMT_TEST=ON
cmake --build . -j
