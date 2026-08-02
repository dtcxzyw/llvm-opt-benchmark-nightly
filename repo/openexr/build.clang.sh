set -eo pipefail
git clone --branch v3.4.13 --depth 1 https://github.com/AcademySoftwareFoundation/openexr.git
cd openexr
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_TESTING=OFF -DOPENEXR_INSTALL_EXAMPLES=OFF -DOPENEXR_BUILD_PYTHON=OFF
cmake --build . -j
