set -eo pipefail
git clone --branch v11.1.0 --recursive --depth 1 https://gitlab.com/qemu-project/qemu.git
cd qemu
./configure --target-list=riscv64-softmmu,riscv64-linux-user,aarch64-softmmu,aarch64-linux-user,x86_64-softmmu,x86_64-linux-user --disable-werror
make -j
