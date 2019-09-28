set(plg_name loupe_filter)
include_directories(.)
add_library(${plg_name}.auf SHARED
    loupe_filter.cpp
    loupe_filter.def
)

target_link_libraries(${plg_name}.auf gdi32)
