set(plg_name avi_input)
add_custom_target(${plg_name} ALL)
include_directories(.)

add_library(${plg_name}.aui SHARED
    avi_input.cpp
    avi_input.def
)

target_link_libraries(${plg_name}.aui vfw32)
