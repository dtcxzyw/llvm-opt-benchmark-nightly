set -eo pipefail
sudo apt install -y libuv1-dev
git clone --branch v4.32.2 --depth 1 https://github.com/leanprover/lean4.git
cd lean4
cmake --preset release
make -C build/release -j$(nproc || sysctl -n hw.logicalcpu)
