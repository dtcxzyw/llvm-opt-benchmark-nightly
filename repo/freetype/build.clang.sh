set -eo pipefail
git clone --branch VER-2-14-3 --depth 1 https://github.com/freetype/freetype.git
cd freetype
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DFT_REQUIRE_ZLIB=TRUE -DFT_REQUIRE_BZIP2=TRUE -DFT_REQUIRE_PNG=TRUE -DFT_REQUIRE_HARFBUZZ=TRUE -DFT_REQUIRE_BROTLI=TRUE
cmake --build . -j
