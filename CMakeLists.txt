cmake_minimum_required(VERSION 3.0)

include("cmake/HunterGate.cmake")
HunterGate(
    URL "https://github.com/ruslo/hunter/archive/v0.19.102.tar.gz"
    SHA1 "49a8333d7efc24c531aed97159fe58a68374185f"
)

# Project
project(protobuf C CXX)

hunter_add_package(ZLIB)

add_subdirectory(cmake)
