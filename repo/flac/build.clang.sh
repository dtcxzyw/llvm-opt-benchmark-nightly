set -eo pipefail
git clone --branch master --depth 1 https://github.com/xiph/flac.git
cd flac
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_EXAMPLES=OFF -DBUILD_TESTING=OFF -DBUILD_DOCS=OFF -DBUILD_SHARED_LIBS=ON -DINSTALL_MANPAGES=OFF
cmake --build . -j
