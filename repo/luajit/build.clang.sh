set -eo pipefail
git clone --branch v2.1 --depth 1 https://github.com/LuaJIT/LuaJIT.git
cd LuaJIT
sed -i '/^DEFAULT_CC\s*=/d' src/Makefile
sed -i 's/^CC\s*=\s*$(DEFAULT_CC)/CC ?= gcc/' src/Makefile
sed -i 's/^\(WARN\s*=\s*\).*$/\1/' src/Makefile
make -j
