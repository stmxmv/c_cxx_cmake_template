add_WNTemplate_library(WNTemplateBasic
        test.cpp
        Version.c
        )


set(WNTemplate_VERSION_STRING "0.1") # which also set the macro.

configure_file(${CMAKE_SOURCE_DIR}/include/WNTemplate/Basic/Version.inc.in
        ${CMAKE_BINARY_DIR}/include/WNTemplate/Basic/Version.inc)

target_include_directories(WNTemplateBasic BEFORE
        PUBLIC
        $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include/WNTemplate>
        $<INSTALL_INTERFACE:include/WNTemplate/>
        PRIVATE
        $<BUILD_INTERFACE:${CMAKE_BINARY_DIR}/include/WNTemplate>
        )

# install public header
install(
        DIRECTORY ${CMAKE_SOURCE_DIR}/include/WNTemplate/Basic/
        COMPONENT WNTemplateBasic
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include/WNTemplate/Basic
        FILES_MATCHING PATTERN "*.h" PATTERN "*.hpp"
)