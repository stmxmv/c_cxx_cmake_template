add_WNTemplate_tool(WNTemplate
        Driver.cpp
        )
set_target_properties(WNTemplate
        PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin
        )
target_link_libraries(WNTemplate
        PRIVATE
        WNTemplateBasic
        )