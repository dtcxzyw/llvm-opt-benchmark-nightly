set -eo pipefail
git clone --branch sf_18 --depth 1 https://github.com/official-stockfish/Stockfish.git
cd Stockfish/src
make -j build ARCH=x86-64-avx512icl COMP=clang COMPCXX="$CXX"
