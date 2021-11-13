
include(WN)

macro(add_WNTemplate_tool name)
    wn_add_executable(${name} ${ARGN})
    if(TARGET ${name})
        # may install here


    else()
        add_custom_target(${name} ${ARGN})
    endif()
endmacro(add_WNTemplate_tool name)


macro(add_WNTemplate_library name)
    wn_add_library(${name} ${ARGN})
    if(TARGET ${name})

        # may link here

        install(TARGETS ${name}
                COMPONENT ${name}
                LIBRARY DESTINATION lib${WNTemplate_LIBDIR_SUFFIX}
                ARCHIVE DESTINATION lib${WNTemplate_LIBDIR_SUFFIX}
                RUNTIME DESTINATION bin)
    else()
        add_custom_target(${name} ${ARGN})
    endif()
endmacro()

set(WNTemplate_LIBDIR_SUFFIX "/WNTemplate")