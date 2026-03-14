set -eo pipefail
git clone --branch 8.6.1 --depth 1 https://github.com/redis/redis.git
cd redis
BUILD_TLS=yes DISABLE_WERRORS=yes make -j all
