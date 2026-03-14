set(LLVM_LINK_COMPONENTS core support irreader irprinter analysis passes ipo scalaropts)
add_llvm_pass_plugin(preprocess preprocess.cpp)
