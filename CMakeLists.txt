cmake_minimum_required(VERSION 3.3)

include("cmake/HunterGate.cmake")
HunterGate(
    URL "https://github.com/ruslo/hunter/archive/v0.20.44.tar.gz"
    SHA1 "5a51c5fa3e2be7d1241d2b6405e197b9fe72333c"
)

# Project
project(protobuf C CXX)

hunter_add_package(ZLIB)

add_subdirectory(cmake)
