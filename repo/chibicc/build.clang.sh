set -eo pipefail
git clone --branch main --depth 1 https://github.com/rui314/chibicc.git
cd chibicc
make -j chibicc
