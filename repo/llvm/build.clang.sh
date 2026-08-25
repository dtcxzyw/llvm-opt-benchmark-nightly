set -eo pipefail
git clone --branch llvmorg-23.1.0-rc3 --depth 1 https://github.com/llvm/llvm-project.git
cd llvm-project/llvm
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON \
    -DLLVM_ENABLE_ASSERTIONS=OFF -DLLVM_INCLUDE_EXAMPLES=OFF \
    -DLLVM_ENABLE_WARNINGS=OFF -DLLVM_APPEND_VC_REV=OFF \
    -DLLVM_ENABLE_PROJECTS="bolt;clang;lld;lldb;mlir;" -DLLVM_ENABLE_ZSTD=OFF \
    -DLLVM_ENABLE_RUNTIMES="libc;libunwind;libcxxabi;libcxx;compiler-rt;openmp" -DLLVM_PARALLEL_LINK_JOBS=4 \
    -DLLVM_ENABLE_BINDINGS=OFF -DLLVM_CCACHE_BUILD=OFF
cmake --build . -j 32
