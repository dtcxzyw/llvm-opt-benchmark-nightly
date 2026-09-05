set -eo pipefail
wget https://fftw.org/fftw-3.3.11.tar.gz -O fftw.tar.gz
tar -zxvf fftw.tar.gz
cd fftw-3.3.11
./configure CC=$CC --enable-avx2
make -j
