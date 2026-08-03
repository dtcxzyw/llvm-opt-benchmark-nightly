set -eo pipefail
git clone --branch v5.0.10 --recursive --depth 1 https://github.com/open-mpi/ompi.git
cd ompi
./autogen.pl
./configure
make -j
