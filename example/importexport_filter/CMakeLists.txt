set(plg_name importexport_filter)
add_custom_target(${plg_name} ALL)
include_directories(.)
add_library(${plg_name}.auf SHARED
    importexport_filter.cpp
    importexport_filter.def
)
