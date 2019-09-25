set(plg_name disp_filter)
add_custom_target(${plg_name} ALL)
include_directories(.)
add_library(${plg_name}.auf SHARED
    disp_filter.cpp
    disp_filter.def
    disp_filter.rc
)

set_source_files_properties(disp_filter.rc PROPERTIES
    LANGUAGE RC)

target_link_libraries(${plg_name}.auf gdi32)
