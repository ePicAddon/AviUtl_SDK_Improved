set(plg_name yuy2_color)
include_directories(.)
add_library(${plg_name}.auc SHARED
    yuy2_color.cpp
)
