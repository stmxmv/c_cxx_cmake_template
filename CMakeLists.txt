cmake_minimum_required(VERSION 3.13.4)
if(CMAKE_SOURCE_DIR STREQUAL CMAKE_CURRENT_SOURCE_DIR)
set(CMAKE_CXX_STANDARD 17)
project(WNTemplate)

set(WNTemplate_BUILT_STANDALONE 1)


list(APPEND CMAKE_MODULE_PATH
  "${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules")


if(CMAKE_SOURCE_DIR STREQUAL CMAKE_BINARY_DIR AND NOT MSVC_IDE)

message(FATAL_ERROR "In-source builds are not allowed.")

endif()



include(WNTemplate)

include_directories(BEFORE
    ${CMAKE_CURRENT_BINARY_DIR}/include
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_subdirectory(lib)
add_subdirectory(tools)
endif()