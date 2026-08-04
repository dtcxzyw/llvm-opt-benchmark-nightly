set -eo pipefail
git clone --branch 15.1.0 --depth 1 https://gitlab.com/graphviz/graphviz.git
cd graphviz
sed -i 's/CMAKE_INTERPROCEDURAL_OPTIMIZATION ON/CMAKE_INTERPROCEDURAL_OPTIMIZATION OFF/g' CMakeLists.txt
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DENABLE_SWIG=OFF -DENABLE_TCL=OFF
cmake --build . -j
