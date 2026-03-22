cmake_minimum_required(VERSION 3.20)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_FIND_PACKAGE_SORT_ORDER NATURAL)
set(CMAKE_FIND_PACKAGE_SORT_DIRECTION DEC)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

project(LLVMTools)

find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
include(AddLLVM)

include_directories(${LLVM_INCLUDE_DIRS})
add_compile_options(-fno-rtti) # Workaround for 174084
add_link_options(-Wl,--no-undefined)
add_subdirectory(scripts/dataset/clang)
add_subdirectory(scripts/llvm-relaxed-diff)
