set(plg_name yuy2_color)
add_custom_target(${plg_name} ALL)
include_directories(.)
add_library(${plg_name}.auc SHARED
    yuy2_color.cpp
)
