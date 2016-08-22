set(protoc_files
  ${protobuf_source_dir}/src/google/protobuf/compiler/main.cc
)


if (protobuf_BUILD_PROTOC)
    add_executable(protoc ${protoc_files})
    target_link_libraries(protoc libprotobuf libprotoc)
endif (protobuf_BUILD_PROTOC)
