set -eo pipefail
git clone --branch v5.5.1 --depth 1 https://github.com/lua/lua.git
cd lua
sed -i 's/^CC\s*=\s*gcc/CC ?= gcc/' makefile
sed -i 's/^CWARNS\s*=.*/CWARNS =/' makefile
make -j
