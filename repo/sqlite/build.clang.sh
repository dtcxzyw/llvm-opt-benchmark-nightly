set -eo pipefail
git clone --branch version-3.53.4 --depth 1 https://github.com/sqlite/sqlite.git
cd sqlite
./configure
make -j
