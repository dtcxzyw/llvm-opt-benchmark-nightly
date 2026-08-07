set -eo pipefail
git clone --branch releases/3.14.19 --depth 1 https://github.com/coin-or/Ipopt.git
cd Ipopt
./configure
make -j
