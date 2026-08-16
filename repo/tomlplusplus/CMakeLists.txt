cmake_minimum_required(VERSION 3.28)
project(tomlpp)

include_directories(tomlplusplus/include)
add_library(tomlpp SHARED
tomlplusplus/src/toml.cpp
)
