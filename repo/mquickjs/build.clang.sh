set -eo pipefail
git clone --branch main --depth 1 https://github.com/bellard/mquickjs.git
cd mquickjs
sed -i 's|^HOST_CC[[:space:]]*=.*|HOST_CC ?= $(CC)|'   Makefile
sed -i 's|^CC[[:space:]]*=.*|CC ?= $(CROSS_PREFIX)gcc|' Makefile
make mqjs
