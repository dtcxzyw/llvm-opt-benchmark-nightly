set -eo pipefail
sudo apt install -y libbz2-dev \
    libcurl4-openssl-dev \
    libjson-c-dev \
    libmilter-dev \
    libncurses-dev \
    libpcre2-dev \
    libssl-dev \
    libxml2-dev \
    zlib1g-dev
git clone --branch clamav-1.5.3 --depth 1 https://github.com/Cisco-Talos/clamav.git
cd clamav
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DOPTIMIZE=OFF -DENABLE_DEBUG=OFF -DENABLE_EXAMPLES=OFF -DENABLE_TESTS=OFF -DENABLE_STATIC_LIB=OFF
cmake --build . -j
