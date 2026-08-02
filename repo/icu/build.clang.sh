set -eo pipefail
git clone --branch release-78.3 --depth 1 https://github.com/unicode-org/icu.git
cd icu/icu4c/source/
chmod +x runConfigureICU configure install-sh
./runConfigureICU Linux --disable-release
make -j
