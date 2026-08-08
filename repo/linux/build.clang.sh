set -eo pipefail
sudo apt install -y bc
git clone --branch v7.2-rc6 --depth 1 https://github.com/torvalds/linux.git
cd linux
make O=build CC=$CC HOSTCC=$CC HOSTCXX=$CXX defconfig
make O=build CC=$CC HOSTCC=$CC HOSTCXX=$CXX -j24
