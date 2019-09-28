set(plg_name avi_input)
include_directories(.)

add_library(${plg_name}.aui SHARED
    avi_input.cpp
    avi_input.def
)

target_link_libraries(${plg_name}.aui vfw32)
