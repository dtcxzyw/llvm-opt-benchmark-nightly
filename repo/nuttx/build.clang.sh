set -eo pipefail
uv pip install kconfiglib
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
git clone --branch nuttx-13.0.1-RC0 --depth 1 https://github.com/apache/nuttx.git
git clone --branch nuttx-13.0.1-RC0 --depth 1 https://github.com/apache/nuttx-apps.git apps
cd nuttx
cp $DIR/romfs_stub.c boards/x86_64/qemu/qemu-intel64/src/romfs_stub.c
sed -i 's/mov %%cr3, %0" : "=rm/movq %%cr3, %0" : "=r/' arch/x86_64/include/intel64/irq.h
sed -i 's/set(SRCS/set(SRCS romfs_stub.c/g' boards/x86_64/qemu/qemu-intel64/src/CMakeLists.txt
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBOARD_CONFIG=qemu-intel64:nsh
cmake --build . -j
