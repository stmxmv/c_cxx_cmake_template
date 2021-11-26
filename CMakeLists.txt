cmake_minimum_required(VERSION 3.13.4)
if(CMAKE_SOURCE_DIR STREQUAL CMAKE_CURRENT_SOURCE_DIR)
    set(CMAKE_CXX_STANDARD 17)
    project(WNTemplate VERSION 1.0)

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


    set(CMAKE_INSTALL_PREFIX /Users/moah/CProjects/lib)

    add_subdirectory(lib)
    add_subdirectory(tools)


#     not install googletest
    set(INSTALL_GMOCK OFF CACHE BOOL "not install test" FORCE)
    set(INSTALL_GTEST OFF CACHE BOOL "not install test" FORCE)

    add_subdirectory(test)



    #------------------------------------install specific------------------------------------------------------

    message("install prefix is ${CMAKE_INSTALL_PREFIX}")

    # make uninstall
    if(NOT TARGET uninstall)
        configure_file(
                "cmake/modules/cmake_uninstall.cmake.in"
                "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
                IMMEDIATE @ONLY)

        add_custom_target(uninstall
                COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake)
    endif()


    # Version Information
    include(CMakePackageConfigHelpers)
    write_basic_package_version_file(
            cmake/modules/${PROJECT_NAME}-config-version.cmake
            VERSION ${PACKAGE_VERSION}
            COMPATIBILITY AnyNewerVersion
    )
    configure_package_config_file(cmake/modules/${PROJECT_NAME}-config.cmake.in
            "${CMAKE_BINARY_DIR}/cmake/modules/${PROJECT_NAME}-config.cmake"
            INSTALL_DESTINATION "lib/cmake/${PROJECT_NAME}")

    install(
            FILES
            "${CMAKE_BINARY_DIR}/cmake/modules/${PROJECT_NAME}-config.cmake"
            "${CMAKE_BINARY_DIR}/cmake/modules/${PROJECT_NAME}-config-version.cmake"
            DESTINATION lib/cmake/${PROJECT_NAME}
    )


endif()