set -eo pipefail
git clone --branch master --depth 1 https://github.com/scrtwpns/mixbox.git
cd mixbox/cpp
export CXXFLAGS="-w -Wno-unused-command-line-argument -DNDEBUG -O3 -Qn -g0"
$CXX $CXXFLAGS mixbox.cpp -c
