cmake_minimum_required(VERSION 3.0)

include("cmake/HunterGate.cmake")
HunterGate(
  URL "https://github.com/ruslo/hunter/archive/v0.12.44.tar.gz"
  SHA1 "54963db4cd6e2a8780643a3cc48bdbbefedec6cc"
)

hunter_add_package(ZLIB)

add_subdirectory(cmake)
