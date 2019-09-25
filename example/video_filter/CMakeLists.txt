set(plg_name video_filter)
add_custom_target(${plg_name} ALL)
include_directories(.)

add_library(${plg_name}.auf SHARED
    video_filter.cpp
    video_filter.def
)
