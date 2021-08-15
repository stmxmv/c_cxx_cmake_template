add_WNTemplate_library(WNTemplateBasic
        test.cpp
        )


set(WNTemplate_VERSION_STRING "0.1") # which also set the macro.

configure_file(${CMAKE_SOURCE_DIR}/include/WNTemplate/Basic/Version.inc.in
        ${CMAKE_BINARY_DIR}/include/WNTemplate/Basic/Version.inc)

target_include_directories(WNTemplateBasic PRIVATE BEFORE
        $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include/WNTemplate>
        $<BUILD_INTERFACE:${CMAKE_BINARY_DIR}/include/WNTemplate>
        $<INSTALL_INTERFACE:include/WNTemplate>
        )