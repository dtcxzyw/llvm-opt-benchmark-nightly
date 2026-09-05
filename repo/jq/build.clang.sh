set -eo pipefail
git clone --branch jq-1.8.2 --recursive --depth 1 https://github.com/jqlang/jq.git
cd jq
autoreconf -i
./configure --with-oniguruma=builtin
make -j
