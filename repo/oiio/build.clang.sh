set -eo pipefail
sudo apt update && sudo apt install -y libdeflate-dev
git clone --branch v3.1.11.0 --depth 1 https://github.com/AcademySoftwareFoundation/OpenImageIO.git
cd OpenImageIO
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DOIIO_BUILD_TOOLS=OFF -DOIIO_BUILD_TESTS=OFF -DBUILD_DOCS=OFF -DINSTALL_DOCS=OFF -DINSTALL_FONTS=OFF -DUSE_PYTHON=OFF -DOpenImageIO_BUILD_MISSING_DEPS=all
cmake --build . -j
