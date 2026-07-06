set -eo pipefail
git clone --branch sf_18 --depth 1 https://github.com/official-stockfish/Stockfish.git
cd Stockfish/src
make -j build COMP=clang COMPCXX="$CXX" EXTRACXXFLAGS="-march=znver5"
