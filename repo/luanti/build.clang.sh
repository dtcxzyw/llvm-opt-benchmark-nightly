set -eo pipefail
sudo apt install -y libpng-dev libjpeg-dev libgl1-mesa-dev libsqlite3-dev \
  libogg-dev libvorbis-dev libopenal-dev libcurl4-gnutls-dev libfreetype6-dev \
  zlib1g-dev libgmp-dev libjsoncpp-dev libzstd-dev libluajit-5.1-dev gettext libsdl2-dev
git clone --branch 5.16.1 --depth 1 https://github.com/luanti-org/luanti.git
cd luanti
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DDEFAULT_ENABLE_LTO=OFF -DENABLE_LTO=OFF -DBUILD_SERVER=ON
cmake --build . -j
