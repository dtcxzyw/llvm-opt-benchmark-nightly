set -eo pipefail
sudo apt install -y pkg-config build-essential autoconf bison re2c libxml2-dev libsqlite3-dev
git clone --branch php-8.5.9 --depth 1 https://github.com/php/php-src.git
cd php-src
./buildconf --force
./configure
make -j
