
# WNTemplate test subproject
project(WNTemplate_tests)
add_subdirectory(googletest)
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})



add_executable(WNTemplate_Tests_run test.cpp)
target_link_libraries(WNTemplate_Tests_run gtest gtest_main)

