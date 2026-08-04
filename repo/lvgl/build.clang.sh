set -eo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
git clone --branch v9.5.0 --depth 1 https://github.com/lvgl/lvgl.git
cd lvgl
cp $DIR/lv_conf.h lv_conf.h
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON
cmake --build . -j
