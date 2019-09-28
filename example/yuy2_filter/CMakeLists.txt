set(plg_name yuy2_filter)
include_directories(.)
add_library(${plg_name}.auf SHARED
    yuy2_filter.cpp
)
