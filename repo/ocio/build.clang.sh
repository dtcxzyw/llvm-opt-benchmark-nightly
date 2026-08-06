set -eo pipefail
git clone --branch v2.5.2 --depth 1 https://github.com/AcademySoftwareFoundation/OpenColorIO.git
cd OpenColorIO
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DOCIO_BUILD_TESTS=OFF -DOCIO_BUILD_GPU_TESTS=OFF -DOCIO_BUILD_APPS=OFF -DOCIO_BUILD_PYTHON=OFF
cmake --build . -j
