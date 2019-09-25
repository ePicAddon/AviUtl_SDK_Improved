set(plg_name interlace_filter)
add_custom_target(${plg_name} ALL)
include_directories(.)
add_library(${plg_name}.auf SHARED
    interlace_filter.cpp
    interlace_filter.def
)
