set -eo pipefail
sudo apt install -y libfftw3-dev
git clone --branch v2026.3 --depth 1 https://gitlab.com/gromacs/gromacs.git
cd gromacs
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja
cmake --build . -j
