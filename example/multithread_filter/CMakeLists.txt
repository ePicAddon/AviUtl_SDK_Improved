set(plg_name multithread_filter)
include_directories(.)
add_library(${plg_name}.auf SHARED
    multithread_filter.cpp
    multithread_filter.def
)
