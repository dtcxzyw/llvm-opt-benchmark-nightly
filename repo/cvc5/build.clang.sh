set -eo pipefail
git clone --branch cvc5-1.3.4 --depth 1 https://github.com/cvc5/cvc5.git
cd cvc5
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -Wno-dev -DENABLE_AUTO_DOWNLOAD=ON -DCMAKE_BUILD_TYPE=Production
cmake --build . -j
