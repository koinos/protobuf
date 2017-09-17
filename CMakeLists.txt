cmake_minimum_required(VERSION 3.0)

include("cmake/HunterGate.cmake")
HunterGate(
    URL "https://github.com/fwinnen/hunter/archive/v0.19.99-p7.tar.gz"
    SHA1 "7874b7b0c5ed74fef3a341fc9d11583f4c89dc23"
)

# Project
project(protobuf C CXX)

hunter_add_package(ZLIB)

add_subdirectory(cmake)
