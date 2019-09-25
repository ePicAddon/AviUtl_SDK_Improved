set(plg_name multithread_filter)
add_custom_target(${plg_name} ALL)
include_directories(.)
add_library(${plg_name}.auf SHARED
    multithread_filter.cpp
    multithread_filter.def
)
