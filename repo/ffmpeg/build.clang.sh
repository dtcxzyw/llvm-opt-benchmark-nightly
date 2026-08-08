set -eo pipefail
git clone --branch n9.0 --depth 1 https://git.ffmpeg.org/ffmpeg.git
cd ffmpeg
./configure --disable-debug --disable-asm --cc=$CC --cxx=$CXX --disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages
make -j
