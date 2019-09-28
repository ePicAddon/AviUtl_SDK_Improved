set(plg_name bmp_output)
include_directories(.)

add_library(${plg_name}.auo SHARED
    bmp_output.cpp
    bmp_output.def
    bmp_output.rc
)

set_source_files_properties(bmp_output.rc PROPERTIES
    LANGUAGE RC)
