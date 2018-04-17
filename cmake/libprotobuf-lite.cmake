set(libprotobuf_lite_files
  ${protobuf_source_dir}/src/google/protobuf/stubs/common.cc
  ${protobuf_source_dir}/src/google/protobuf/stubs/once.cc
  ${protobuf_source_dir}/src/google/protobuf/stubs/hash.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/map-util.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/stl_util-inl.h
  ${protobuf_source_dir}/src/google/protobuf/extension_set.cc
  ${protobuf_source_dir}/src/google/protobuf/generated_message_util.cc
  ${protobuf_source_dir}/src/google/protobuf/message_lite.cc
  ${protobuf_source_dir}/src/google/protobuf/repeated_field.cc
  ${protobuf_source_dir}/src/google/protobuf/wire_format_lite.cc
  ${protobuf_source_dir}/src/google/protobuf/io/coded_stream.cc
  ${protobuf_source_dir}/src/google/protobuf/io/coded_stream_inl.h
  ${protobuf_source_dir}/src/google/protobuf/io/zero_copy_stream.cc
  ${protobuf_source_dir}/src/google/protobuf/io/zero_copy_stream_impl_lite.cc
)

set(libprotobuf_lite_includes
  ${protobuf_source_dir}/src/google/protobuf/arena.h
  ${protobuf_source_dir}/src/google/protobuf/arenastring.h
  ${protobuf_source_dir}/src/google/protobuf/extension_set.h
  ${protobuf_source_dir}/src/google/protobuf/generated_message_util.h
  ${protobuf_source_dir}/src/google/protobuf/io/coded_stream.h
  ${protobuf_source_dir}/src/google/protobuf/io/zero_copy_stream.h
  ${protobuf_source_dir}/src/google/protobuf/io/zero_copy_stream_impl_lite.h
  ${protobuf_source_dir}/src/google/protobuf/message_lite.h
  ${protobuf_source_dir}/src/google/protobuf/repeated_field.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/atomicops_internals_x86_msvc.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/bytestream.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/common.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/int128.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/once.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/status.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/statusor.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/stringpiece.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/stringprintf.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/strutil.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/time.h
  ${protobuf_source_dir}/src/google/protobuf/wire_format_lite.h
)


if (protobuf_BUILD_LIBPROTOBUF_LITE)
    add_library(libprotobuf-lite ${protobuf_SHARED_OR_STATIC}
      ${libprotobuf_lite_files})
    target_link_libraries(libprotobuf-lite PUBLIC ${CMAKE_THREAD_LIBS_INIT})
    target_include_directories(
        libprotobuf-lite
        PUBLIC
        $<BUILD_INTERFACE:${protobuf_source_dir}/vsprojects>
        $<BUILD_INTERFACE:${protobuf_source_dir}/xxx>
        ${protobuf_source_dir}/vsprojects
    )
    add_library(proto::libprotobuf_lite ALIAS libprotobuf-lite)
    if(MSVC AND protobuf_BUILD_SHARED_LIBS)
      target_compile_definitions(libprotobuf-lite
        PUBLIC  PROTOBUF_USE_DLLS
        PRIVATE LIBPROTOBUF_EXPORTS)
    endif()
    set_target_properties(libprotobuf-lite PROPERTIES
        OUTPUT_NAME ${LIB_PREFIX}protobuf-lite
        DEBUG_POSTFIX "${protobuf_DEBUG_POSTFIX}")
endif (protobuf_BUILD_LIBPROTOBUF_LITE)
