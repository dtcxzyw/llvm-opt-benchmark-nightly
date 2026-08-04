set -eo pipefail
git clone --branch boost-1.92.0.beta1 --depth 1 --recursive https://github.com/boostorg/boost.git
cd boost
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DBOOST_ENABLE_MPI=OFF -DBOOST_ENABLE_PYTHON=OFF -DBUILD_TESTING=ON -DBOOST_SKIP_INSTALL_RULES=OFF -DBOOST_EXCLUDE_LIBRARIES=process
cmake --build . -j
