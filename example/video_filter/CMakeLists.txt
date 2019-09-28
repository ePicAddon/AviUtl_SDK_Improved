set(plg_name video_filter)
include_directories(.)

add_library(${plg_name}.auf SHARED
    video_filter.cpp
    video_filter.def
)
