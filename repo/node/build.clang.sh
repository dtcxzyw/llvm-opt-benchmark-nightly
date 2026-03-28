set -eo pipefail
git clone --branch v25.8.2 --depth 1 https://github.com/nodejs/node.git
cd node
./configure --ninja
make
