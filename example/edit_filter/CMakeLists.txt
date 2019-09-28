set(plg_name edit_filter)
include_directories(.)
add_library(${plg_name}.auf SHARED
    edit_filter.cpp
    edit_filter.def
    edit_filter.rc
)

set_source_files_properties(edit_filter.rc PROPERTIES
    LANGUAGE RC)

target_link_libraries(${plg_name}.auf gdi32)
