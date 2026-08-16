cmake_minimum_required(VERSION 3.28)
project(nuklear)

include_directories(.)
add_library(nuklear SHARED
unity.c
)
