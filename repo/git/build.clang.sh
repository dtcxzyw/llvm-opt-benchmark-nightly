set -eo pipefail
git clone --branch v2.55.0 --depth 1 https://github.com/git/git.git
cd git
autoreconf -i
./configure
make -j all
