set -eo pipefail
git clone --branch REL_19_BETA2 --depth 1 https://github.com/postgres/postgres.git
cd postgres
./configure
make -j
