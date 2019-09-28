set(plg_name audio_filter)
include_directories(.)
add_library(${plg_name}.auf SHARED
    audio_filter.cpp
    audio_filter.def
)
