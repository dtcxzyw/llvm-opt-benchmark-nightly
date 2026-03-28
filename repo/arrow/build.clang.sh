set -eo pipefail
git clone --branch apache-arrow-23.0.1 --depth 1 https://github.com/apache/arrow.git
cd arrow/cpp
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DARROW_BUILD_SHARED=ON -DARROW_BUILD_TESTS=OFF -DARROW_BUILD_EXAMPLES=OFF -DARROW_FUZZING=OFF
cmake --build . -j
