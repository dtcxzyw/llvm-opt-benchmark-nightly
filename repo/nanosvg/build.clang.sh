set -eo pipefail
git clone --branch master --depth 1 https://github.com/memononen/nanosvg.git
cd nanosvg
export CFLAGS="-w -Wno-unused-command-line-argument -DNDEBUG -O3 -Qn -g0"
$CC $CFLAGS -DNANOSVG_IMPLEMENTATION -DNANOSVGRAST_IMPLEMENTATION -x c -c -o nanosvg.o src/nanosvgrast.h
