set -eo pipefail
sudo apt install -y libmunge-dev
git clone --branch slurm-26-05-2-1 --depth 1 https://github.com/SchedMD/slurm.git
cd slurm
autoconf
./configure
make -j
