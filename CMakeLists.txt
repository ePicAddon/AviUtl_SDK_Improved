cmake_minimum_required(VERSION 2.8)

project(aviutl_plugin CXX)

set(NO_SONAME TRUE)

IF(WIN32)
    set(CMAKE_C_COMPILER gcc)
    set(CMAKE_CXX_COMPILER g++)
    set(CMAKE_RC_COMPILER windres)
ELSE()
    set(CMAKE_C_COMPILER i686-w64-mingw32-gcc)
    set(CMAKE_CXX_COMPILER i686-w64-mingw32-g++)
    set(CMAKE_RC_COMPILER i686-w64-mingw32-windres)
ENDIF()

set(CMAKE_SHARED_LIBRARY_SUFFIX "")
set(CMAKE_SHARED_LIBRARY_PREFIX "")
set(CMAKE_LINK_DEF_FILE_FLAG "")
SET(CMAKE_RC_COMPILE_OBJECT "${CMAKE_RC_COMPILER} -O coff -I${CMAKE_CURRENT_SOURCE_DIR} <SOURCE> <OBJECT>")
SET(CMAKE_SHARED_COMPILE_OBJECT "${CMAKE_RC_COMPILER} -O coff -I${CMAKE_CURRENT_SOURCE_DIR} <SOURCE> <OBJECT>")


set(CMAKE_CXX_FLAGS "-fexec-charset=CP932")
set(CMAKE_SHARED_LINKER_FLAGS "-Wl,--dll,--enable-stdcall-fixup")

include_directories(include)

add_subdirectory(example)
add_subdirectory(src)
