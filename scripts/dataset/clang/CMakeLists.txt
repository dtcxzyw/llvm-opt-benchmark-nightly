set(LLVM_LINK_COMPONENTS core support bitwriter passes ipo scalaropts)
add_llvm_pass_plugin(preprocess preprocess.cpp)
