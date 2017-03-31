LOCAL_PATH := $(call my-dir)

IGNORED_WARNINGS := -Wno-sign-compare -Wno-unused-parameter -Wno-sign-promo -Wno-error=return-type

CC_LITE_SRC_FILES := \
    src/google/protobuf/stubs/atomicops_internals_x86_gcc.cc         \
    src/google/protobuf/stubs/atomicops_internals_x86_msvc.cc        \
    src/google/protobuf/stubs/bytestream.cc        \
    src/google/protobuf/stubs/bytestream.h        \
    src/google/protobuf/stubs/common.cc                              \
    src/google/protobuf/stubs/once.cc                                \
    src/google/protobuf/stubs/hash.h                                 \
    src/google/protobuf/stubs/int128.cc                              \
    src/google/protobuf/stubs/int128.h                              \
    src/google/protobuf/stubs/map_util.h                             \
    src/google/protobuf/stubs/mathutil.h                             \
    src/google/protobuf/stubs/shared_ptr.h                           \
    src/google/protobuf/stubs/status.cc                           \
    src/google/protobuf/stubs/status.h                           \
    src/google/protobuf/stubs/status_macros.h                           \
    src/google/protobuf/stubs/statusor.h                           \
    src/google/protobuf/stubs/statusor.cc                           \
    src/google/protobuf/stubs/stringpiece.cc                        \
    src/google/protobuf/stubs/stringpiece.h                        \
    src/google/protobuf/stubs/stringprintf.cc                        \
    src/google/protobuf/stubs/stringprintf.h                         \
    src/google/protobuf/stubs/structurally_valid.cc                         \
    src/google/protobuf/stubs/strutil.cc                         \
    src/google/protobuf/stubs/strutil.h                         \
    src/google/protobuf/stubs/time.cc                         \
    src/google/protobuf/stubs/time.h                         \
    src/google/protobuf/arena.cc                             \
    src/google/protobuf/arenastring.cc                             \
    src/google/protobuf/extension_set.cc                             \
    src/google/protobuf/generated_message_util.cc                    \
    src/google/protobuf/message_lite.cc                              \
    src/google/protobuf/repeated_field.cc                            \
    src/google/protobuf/wire_format_lite.cc                          \
    src/google/protobuf/io/coded_stream.cc                           \
    src/google/protobuf/io/coded_stream_inl.h                        \
    src/google/protobuf/io/zero_copy_stream.cc                       \
    src/google/protobuf/io/zero_copy_stream_impl_lite.cc

# This contains more source files than needed for the full version, but the
# additional files should not create any conflict.

COMPILER_SRC_FILES :=  \
    src/google/protobuf/compiler/code_generator.cc \
    src/google/protobuf/compiler/command_line_interface.cc \
    src/google/protobuf/compiler/plugin.cc \
    src/google/protobuf/compiler/plugin.pb.cc \
    src/google/protobuf/compiler/subprocess.cc \
    src/google/protobuf/compiler/zip_writer.cc \
    src/google/protobuf/compiler/cpp/cpp_enum.cc \
    src/google/protobuf/compiler/cpp/cpp_enum_field.cc \
    src/google/protobuf/compiler/cpp/cpp_extension.cc \
    src/google/protobuf/compiler/cpp/cpp_field.cc \
    src/google/protobuf/compiler/cpp/cpp_file.cc \
    src/google/protobuf/compiler/cpp/cpp_generator.cc \
    src/google/protobuf/compiler/cpp/cpp_helpers.cc \
    src/google/protobuf/compiler/cpp/cpp_map_field.cc \
    src/google/protobuf/compiler/cpp/cpp_message.cc \
    src/google/protobuf/compiler/cpp/cpp_message_field.cc \
    src/google/protobuf/compiler/cpp/cpp_options.h \
    src/google/protobuf/compiler/cpp/cpp_primitive_field.cc \
    src/google/protobuf/compiler/cpp/cpp_service.cc \
    src/google/protobuf/compiler/cpp/cpp_string_field.cc \
    src/google/protobuf/compiler/java/java_context.cc \
    src/google/protobuf/compiler/java/java_enum.cc \
    src/google/protobuf/compiler/java/java_enum_lite.cc \
    src/google/protobuf/compiler/java/java_enum_field.cc \
    src/google/protobuf/compiler/java/java_enum_field_lite.cc \
    src/google/protobuf/compiler/java/java_extension.cc \
    src/google/protobuf/compiler/java/java_extension_lite.cc \
    src/google/protobuf/compiler/java/java_field.cc \
    src/google/protobuf/compiler/java/java_file.cc \
    src/google/protobuf/compiler/java/java_generator.cc \
    src/google/protobuf/compiler/java/java_generator_factory.cc \
    src/google/protobuf/compiler/java/java_helpers.cc \
    src/google/protobuf/compiler/java/java_lazy_message_field.cc \
    src/google/protobuf/compiler/java/java_lazy_message_field_lite.cc \
    src/google/protobuf/compiler/java/java_map_field.cc \
    src/google/protobuf/compiler/java/java_map_field_lite.cc \
    src/google/protobuf/compiler/java/java_message.cc \
    src/google/protobuf/compiler/java/java_message_lite.cc \
    src/google/protobuf/compiler/java/java_message_builder.cc \
    src/google/protobuf/compiler/java/java_message_builder_lite.cc \
    src/google/protobuf/compiler/java/java_message_field.cc \
    src/google/protobuf/compiler/java/java_message_field_lite.cc \
    src/google/protobuf/compiler/java/java_name_resolver.cc \
    src/google/protobuf/compiler/java/java_options.h \
    src/google/protobuf/compiler/java/java_primitive_field.cc \
    src/google/protobuf/compiler/java/java_primitive_field_lite.cc \
    src/google/protobuf/compiler/java/java_shared_code_generator.cc \
    src/google/protobuf/compiler/java/java_service.cc \
    src/google/protobuf/compiler/java/java_string_field.cc \
    src/google/protobuf/compiler/java/java_string_field_lite.cc \
    src/google/protobuf/compiler/java/java_doc_comment.cc \
	src/google/protobuf/compiler/js/js_generator.cc                  \
	src/google/protobuf/compiler/javanano/javanano_enum.cc           \
	src/google/protobuf/compiler/javanano/javanano_enum.h            \
	src/google/protobuf/compiler/javanano/javanano_enum_field.cc     \
	src/google/protobuf/compiler/javanano/javanano_enum_field.h      \
	src/google/protobuf/compiler/javanano/javanano_extension.cc      \
	src/google/protobuf/compiler/javanano/javanano_extension.h       \
	src/google/protobuf/compiler/javanano/javanano_field.cc          \
	src/google/protobuf/compiler/javanano/javanano_field.h           \
	src/google/protobuf/compiler/javanano/javanano_file.cc           \
	src/google/protobuf/compiler/javanano/javanano_file.h            \
	src/google/protobuf/compiler/javanano/javanano_generator.cc      \
	src/google/protobuf/compiler/javanano/javanano_generator.h       \
	src/google/protobuf/compiler/javanano/javanano_helpers.cc        \
	src/google/protobuf/compiler/javanano/javanano_helpers.h         \
	src/google/protobuf/compiler/javanano/javanano_map_field.cc      \
	src/google/protobuf/compiler/javanano/javanano_map_field.h       \
	src/google/protobuf/compiler/javanano/javanano_message.cc        \
	src/google/protobuf/compiler/javanano/javanano_message.h         \
	src/google/protobuf/compiler/javanano/javanano_message_field.cc  \
	src/google/protobuf/compiler/javanano/javanano_message_field.h   \
	src/google/protobuf/compiler/javanano/javanano_params.h          \
	src/google/protobuf/compiler/javanano/javanano_primitive_field.cc \
	src/google/protobuf/compiler/javanano/javanano_primitive_field.h \
	src/google/protobuf/compiler/objectivec/objectivec_enum.cc       \
	src/google/protobuf/compiler/objectivec/objectivec_enum.h        \
	src/google/protobuf/compiler/objectivec/objectivec_enum_field.cc \
	src/google/protobuf/compiler/objectivec/objectivec_enum_field.h  \
	src/google/protobuf/compiler/objectivec/objectivec_extension.cc  \
	src/google/protobuf/compiler/objectivec/objectivec_extension.h   \
	src/google/protobuf/compiler/objectivec/objectivec_field.cc      \
	src/google/protobuf/compiler/objectivec/objectivec_field.h       \
	src/google/protobuf/compiler/objectivec/objectivec_file.cc       \
	src/google/protobuf/compiler/objectivec/objectivec_file.h        \
	src/google/protobuf/compiler/objectivec/objectivec_generator.cc  \
	src/google/protobuf/compiler/objectivec/objectivec_helpers.cc    \
	src/google/protobuf/compiler/objectivec/objectivec_helpers.h     \
	src/google/protobuf/compiler/objectivec/objectivec_map_field.cc  \
	src/google/protobuf/compiler/objectivec/objectivec_map_field.h   \
	src/google/protobuf/compiler/objectivec/objectivec_message.cc    \
	src/google/protobuf/compiler/objectivec/objectivec_message.h     \
	src/google/protobuf/compiler/objectivec/objectivec_message_field.cc \
	src/google/protobuf/compiler/objectivec/objectivec_message_field.h \
	src/google/protobuf/compiler/objectivec/objectivec_oneof.cc      \
	src/google/protobuf/compiler/objectivec/objectivec_oneof.h       \
	src/google/protobuf/compiler/objectivec/objectivec_primitive_field.cc \
	src/google/protobuf/compiler/objectivec/objectivec_primitive_field.h \
	src/google/protobuf/compiler/php/php_generator.cc                \
	src/google/protobuf/compiler/python/python_generator.cc          \
	src/google/protobuf/compiler/ruby/ruby_generator.cc              \
	src/google/protobuf/compiler/csharp/csharp_doc_comment.cc        \
	src/google/protobuf/compiler/csharp/csharp_doc_comment.h         \
	src/google/protobuf/compiler/csharp/csharp_enum.cc               \
	src/google/protobuf/compiler/csharp/csharp_enum.h                \
	src/google/protobuf/compiler/csharp/csharp_enum_field.cc         \
	src/google/protobuf/compiler/csharp/csharp_enum_field.h          \
	src/google/protobuf/compiler/csharp/csharp_field_base.cc         \
	src/google/protobuf/compiler/csharp/csharp_field_base.h          \
	src/google/protobuf/compiler/csharp/csharp_generator.cc          \
	src/google/protobuf/compiler/csharp/csharp_helpers.cc            \
	src/google/protobuf/compiler/csharp/csharp_helpers.h             \
	src/google/protobuf/compiler/csharp/csharp_map_field.cc          \
	src/google/protobuf/compiler/csharp/csharp_map_field.h           \
	src/google/protobuf/compiler/csharp/csharp_message.cc            \
	src/google/protobuf/compiler/csharp/csharp_message.h             \
	src/google/protobuf/compiler/csharp/csharp_message_field.cc      \
	src/google/protobuf/compiler/csharp/csharp_message_field.h       \
	src/google/protobuf/compiler/csharp/csharp_options.h             \
	src/google/protobuf/compiler/csharp/csharp_primitive_field.cc    \
	src/google/protobuf/compiler/csharp/csharp_primitive_field.h     \
	src/google/protobuf/compiler/csharp/csharp_reflection_class.cc     \
	src/google/protobuf/compiler/csharp/csharp_reflection_class.h      \
	src/google/protobuf/compiler/csharp/csharp_repeated_enum_field.cc \
	src/google/protobuf/compiler/csharp/csharp_repeated_enum_field.h \
	src/google/protobuf/compiler/csharp/csharp_repeated_message_field.cc \
	src/google/protobuf/compiler/csharp/csharp_repeated_message_field.h \
	src/google/protobuf/compiler/csharp/csharp_repeated_primitive_field.cc \
	src/google/protobuf/compiler/csharp/csharp_repeated_primitive_field.h \
	src/google/protobuf/compiler/csharp/csharp_source_generator_base.cc \
	src/google/protobuf/compiler/csharp/csharp_source_generator_base.h \
	src/google/protobuf/compiler/csharp/csharp_wrapper_field.cc      \
	src/google/protobuf/compiler/csharp/csharp_wrapper_field.h



#    src/google/protobuf/io/coded_stream.cc \
    src/google/protobuf/io/gzip_stream.cc \
    src/google/protobuf/io/printer.cc \
    src/google/protobuf/io/strtod.cc \
    src/google/protobuf/io/tokenizer.cc \
    src/google/protobuf/io/zero_copy_stream.cc \
    src/google/protobuf/io/zero_copy_stream_impl.cc \
    src/google/protobuf/io/zero_copy_stream_impl_lite.cc \
    src/google/protobuf/stubs/atomicops_internals_x86_gcc.cc \
    src/google/protobuf/stubs/atomicops_internals_x86_msvc.cc \
    src/google/protobuf/stubs/common.cc \
    src/google/protobuf/stubs/once.cc \
    src/google/protobuf/stubs/structurally_valid.cc \
    src/google/protobuf/stubs/strutil.cc \
    src/google/protobuf/stubs/substitute.cc \
    src/google/protobuf/stubs/stringprintf.cc \
    src/google/protobuf/descriptor.cc \
    src/google/protobuf/descriptor.pb.cc \
    src/google/protobuf/descriptor_database.cc \
    src/google/protobuf/dynamic_message.cc \
    src/google/protobuf/extension_set.cc \
    src/google/protobuf/extension_set_heavy.cc \
    src/google/protobuf/generated_message_reflection.cc \
    src/google/protobuf/generated_message_util.cc \
    src/google/protobuf/message.cc \
    src/google/protobuf/message_lite.cc \
    src/google/protobuf/reflection_ops.cc \
    src/google/protobuf/repeated_field.cc \
    src/google/protobuf/service.cc \
    src/google/protobuf/text_format.cc \
    src/google/protobuf/unknown_field_set.cc \
    src/google/protobuf/wire_format.cc \
    src/google/protobuf/wire_format_lite.cc \

# C++ lite library
# =======================================================
include $(CLEAR_VARS)

LOCAL_MODULE := libprotobuf-rokid-cpp-lite
LOCAL_MODULE_TAGS := optional

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := $(CC_LITE_SRC_FILES)

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/src

# Define the header files to be copied
#LOCAL_COPY_HEADERS := \
#    src/google/protobuf/stubs/once.h \
#    src/google/protobuf/stubs/common.h \
#    src/google/protobuf/io/coded_stream.h \
#    src/google/protobuf/generated_message_util.h \
#    src/google/protobuf/repeated_field.h \
#    src/google/protobuf/extension_set.h \
#    src/google/protobuf/wire_format_lite_inl.h
#
#LOCAL_COPY_HEADERS_TO := $(LOCAL_MODULE)

LOCAL_CFLAGS := -DGOOGLE_PROTOBUF_NO_RTTI $(IGNORED_WARNINGS) -DHAVE_PTHREAD=1 -std=c++11
LOCAL_CXX_STL := libc++

include $(BUILD_STATIC_LIBRARY)

# C++ lite library (libc++ flavored for the platform)
# =======================================================
include $(CLEAR_VARS)

LOCAL_MODULE := libprotobuf-rokid-cpp-lite
LOCAL_MODULE_TAGS := optional

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := $(CC_LITE_SRC_FILES)

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/src

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/src
LOCAL_CFLAGS := -DGOOGLE_PROTOBUF_NO_RTTI $(IGNORED_WARNINGS) -DHAVE_PTHREAD=1 -std=c++11
LOCAL_CXX_STL := libc++

include $(BUILD_SHARED_LIBRARY)

# C++ full library
# =======================================================
protobuf_cc_full_src_files := \
    $(CC_LITE_SRC_FILES)                                             \
    src/google/protobuf/any.pb.cc                             \
    src/google/protobuf/api.pb.cc                             \
    src/google/protobuf/any.cc                             \
    src/google/protobuf/stubs/mathlimits.cc                             \
    src/google/protobuf/stubs/mathlimits.h                             \
    src/google/protobuf/stubs/substitute.cc                          \
    src/google/protobuf/stubs/substitute.h                           \
    src/google/protobuf/descriptor.cc                                \
    src/google/protobuf/descriptor.pb.cc                             \
    src/google/protobuf/descriptor_database.cc                       \
    src/google/protobuf/duration.pb.cc                       \
    src/google/protobuf/dynamic_message.cc                           \
    src/google/protobuf/empty.pb.cc                           \
    src/google/protobuf/extension_set_heavy.cc                       \
    src/google/protobuf/generated_message_reflection.cc              \
    src/google/protobuf/message.cc                                   \
    src/google/protobuf/map_field.cc                                   \
    src/google/protobuf/field_mask.pb.cc                                   \
    src/google/protobuf/reflection_ops.cc                            \
    src/google/protobuf/reflection_internal.h                            \
    src/google/protobuf/service.cc                                   \
    src/google/protobuf/source_context.pb.cc                                   \
    src/google/protobuf/struct.pb.cc                                   \
    src/google/protobuf/text_format.cc                               \
    src/google/protobuf/timestamp.pb.cc                               \
    src/google/protobuf/type.pb.cc                               \
    src/google/protobuf/unknown_field_set.cc                         \
    src/google/protobuf/wire_format.cc                               \
    src/google/protobuf/wrappers.pb.cc                               \
    src/google/protobuf/io/gzip_stream.cc                            \
    src/google/protobuf/io/printer.cc                                \
    src/google/protobuf/io/strtod.cc                                 \
    src/google/protobuf/io/tokenizer.cc                              \
    src/google/protobuf/io/zero_copy_stream_impl.cc                  \
    src/google/protobuf/compiler/importer.cc                         \
    src/google/protobuf/compiler/parser.cc                           \
    src/google/protobuf/util/field_comparator.cc                     \
    src/google/protobuf/util/field_mask_util.cc                     \
    src/google/protobuf/util/internal/constants.h                     \
    src/google/protobuf/util/internal/datapiece.cc                     \
    src/google/protobuf/util/internal/datapiece.h                     \
    src/google/protobuf/util/internal/default_value_objectwriter.cc   \
    src/google/protobuf/util/internal/default_value_objectwriter.h    \
    src/google/protobuf/util/internal/error_listener.cc   \
    src/google/protobuf/util/internal/error_listener.h   \
    src/google/protobuf/util/internal/expecting_objectwriter.h   \
    src/google/protobuf/util/internal/field_mask_utility.cc   \
    src/google/protobuf/util/internal/field_mask_utility.h   \
    src/google/protobuf/util/internal/json_escaping.cc               \
    src/google/protobuf/util/internal/json_escaping.h                \
    src/google/protobuf/util/internal/json_objectwriter.cc           \
	src/google/protobuf/util/internal/json_objectwriter.h            \
	src/google/protobuf/util/internal/json_stream_parser.cc          \
	src/google/protobuf/util/internal/json_stream_parser.h           \
	src/google/protobuf/util/internal/location_tracker.h             \
	src/google/protobuf/util/internal/mock_error_listener.h          \
	src/google/protobuf/util/internal/object_location_tracker.h      \
	src/google/protobuf/util/internal/object_source.h                \
	src/google/protobuf/util/internal/object_writer.cc               \
	src/google/protobuf/util/internal/object_writer.h                \
	src/google/protobuf/util/internal/protostream_objectsource.cc    \
	src/google/protobuf/util/internal/protostream_objectsource.h     \
	src/google/protobuf/util/internal/protostream_objectwriter.cc    \
	src/google/protobuf/util/internal/protostream_objectwriter.h     \
    src/google/protobuf/util/internal/proto_writer.cc                \
	src/google/protobuf/util/internal/proto_writer.h                 \
	src/google/protobuf/util/internal/structured_objectwriter.h      \
	src/google/protobuf/util/internal/type_info.cc                   \
	src/google/protobuf/util/internal/type_info.h                    \
	src/google/protobuf/util/internal/type_info_test_helper.cc       \
	src/google/protobuf/util/internal/type_info_test_helper.h        \
	src/google/protobuf/util/internal/utility.cc                     \
	src/google/protobuf/util/internal/utility.h                      \
	src/google/protobuf/util/json_util.cc                            \
	src/google/protobuf/util/message_differencer.cc                  \
	src/google/protobuf/util/time_util.cc                            \
	src/google/protobuf/util/type_resolver_util.cc


# C++ full library - stlport version
# =======================================================
include $(CLEAR_VARS)

LOCAL_MODULE := libprotobuf-rokid-cpp-full
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := $(protobuf_cc_full_src_files)
LOCAL_C_INCLUDES := \
    external/zlib \
    $(LOCAL_PATH)/src

# Define the header files to be copied
#LOCAL_COPY_HEADERS := \
#    src/google/protobuf/stubs/once.h \
#    src/google/protobuf/stubs/common.h \
#    src/google/protobuf/io/coded_stream.h \
#    src/google/protobuf/generated_message_util.h \
#    src/google/protobuf/repeated_field.h \
#    src/google/protobuf/extension_set.h \
#    src/google/protobuf/wire_format_lite_inl.h
#
#LOCAL_COPY_HEADERS_TO := $(LOCAL_MODULE)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/src

LOCAL_CFLAGS := -DGOOGLE_PROTOBUF_NO_RTTI $(IGNORED_WARNINGS) -DHAVE_PTHREAD=1 -std=c++11
LOCAL_CXX_STL := libc++
LOCAL_SHARED_LIBRARIES := libz

include $(BUILD_SHARED_LIBRARY)

# C++ full library - Gnustl+rtti version
# =======================================================
#include $(CLEAR_VARS)

#LOCAL_MODULE := libprotobuf-rokid-cpp-full-gnustl-rtti
#LOCAL_MODULE_TAGS := optional
#LOCAL_CPP_EXTENSION := .cc
#LOCAL_SRC_FILES := $(protobuf_cc_full_src_files)
#LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/android \
    external/zlib \
    $(LOCAL_PATH)/src

#LOCAL_CFLAGS := -frtti $(IGNORED_WARNINGS)
#LOCAL_SDK_VERSION := 14
#LOCAL_NDK_STL_VARIANT := gnustl_static

#include $(BUILD_STATIC_LIBRARY)

# C++ full library - libc++ version for the platform
# =======================================================
#include $(CLEAR_VARS)

#LOCAL_MODULE := libprotobuf-rokid-cpp-full
#LOCAL_MODULE_TAGS := optional
#LOCAL_CPP_EXTENSION := .cc
#LOCAL_SRC_FILES := $(protobuf_cc_full_src_files)
#LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/android \
    external/zlib \
    $(LOCAL_PATH)/src

#LOCAL_CFLAGS := -DGOOGLE_PROTOBUF_NO_RTTI $(IGNORED_WARNINGS)
#LOCAL_SHARED_LIBRARIES := libz

#include $(BUILD_SHARED_LIBRARY)

# Clean temp vars
# protobuf_cc_full_src_files :=


# Android Protocol buffer compiler, aprotoc (host executable)
# used by the build systems as $(PROTOC) defined in
# build/core/config.mk
# =======================================================

include $(CLEAR_VARS)

LOCAL_MODULE := librprotoc
LOCAL_MODULE_TAGS := optional

# Use the system's libstdc++ (libc++ on mac) because we copy aprotoc to
# unbundled projects where libc++.so may not be available.
LOCAL_CXX_STL := libstdc++

LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := $(COMPILER_SRC_FILES) $(protobuf_cc_full_src_files)

LOCAL_C_INCLUDES := \
    external/zlib \
    $(LOCAL_PATH)/src

LOCAL_STATIC_LIBRARIES += libz

ifneq ($(HOST_OS),windows)
LOCAL_LDLIBS := -lpthread
endif

LOCAL_CFLAGS := $(IGNORED_WARNINGS) -DHAVE_PTHREAD=1
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/src

include $(BUILD_HOST_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := rprotoc
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional

# Use the system's libstdc++ (libc++ on mac) because we copy aprotoc to
# unbundled projects where libc++.so may not be available.
LOCAL_CXX_STL := libstdc++

LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := src/google/protobuf/compiler/main.cc

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/src

ifneq ($(HOST_OS),windows)
LOCAL_LDLIBS := -lpthread
endif

LOCAL_CFLAGS := $(IGNORED_WARNINGS) -DHAVE_PTHREAD=1
LOCAL_SHARED_LIBRARIES := librprotoc

include $(BUILD_HOST_EXECUTABLE)

