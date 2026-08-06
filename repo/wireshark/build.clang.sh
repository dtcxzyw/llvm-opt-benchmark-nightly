set -eo pipefail
sudo apt install -y libc-ares-dev libspeexdsp-dev qt6-base-dev qt6-base-private-dev qt6-tools-dev qt6-svg-dev qt6-multimedia-dev \
  libpcap-dev libmaxminddb-dev libsnmp-dev libgnutls28-dev libkrb5-dev libxxhash-dev zlib1g-dev libnghttp2-dev libnl-genl-3-dev libopus-dev \
  libminizip-dev libnghttp3-dev libcap-dev doxygen asciidoctor libssh-dev libsystemd-dev libsmi2-dev libsbc-dev \
  libspandsp-dev libopencore-amrnb-dev libopencore-amrwb-dev libcpuinfo-dev libbcg729-dev
git clone --branch v4.7.3rc0 --depth 1 https://gitlab.com/wireshark/wireshark.git
cd wireshark
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DCMAKE_C_FLAGS="-Wno-error=unused-but-set-global"
cmake --build . -j
