add_WNTemplate_tool(WNTemplate
        Driver.cpp
        )

target_compile_options(WNTemplate
        PRIVATE
        -O0
        -fno-exceptions
        -fno-rtti
)

target_link_libraries(WNTemplate
        PRIVATE
        WNTemplateBasic
        )