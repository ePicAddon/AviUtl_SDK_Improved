set(plg_name yuy2_filter)
add_custom_target(${plg_name} ALL)
include_directories(.)
add_library(${plg_name}.auf SHARED
    yuy2_filter.cpp
)
