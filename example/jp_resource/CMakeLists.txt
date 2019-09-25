set(plg_name jp_resource)
add_custom_target(${plg_name} ALL)
include_directories(.)
add_library(${plg_name}.aul SHARED
    jp_resource.cpp
    jp_resource.rc
)

set_source_files_properties(jp_resource.rc PROPERTIES
    LANGUAGE RC)
