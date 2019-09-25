set(plg_name audio_filter)
add_custom_target(${plg_name} ALL)
include_directories(.)
add_library(${plg_name}.auf SHARED
    audio_filter.cpp
    audio_filter.def
)
