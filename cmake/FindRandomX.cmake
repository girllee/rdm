find_path(
    RANDOMX_INCLUDE_DIR
    NAMES randomx.h
    PATHS "${CMAKE_SOURCE_DIR}/xmrstak/backend/cpu/RandomX"
    PATH_SUFFIXES "include"
    NO_DEFAULT_PATH
)

find_path(RANDOMX_INCLUDE_DIR NAMES randomx.h)

find_library(
    RANDOMX_LIBRARY
    NAMES librandomx.a randomx librandomx
    PATHS "${CMAKE_SOURCE_DIR}/xmrstak/backend/cpu/RandomX"
    PATH_SUFFIXES "lib"
    NO_DEFAULT_PATH
)

find_library(RANDOMX_LIBRARY NAMES librandomx.a randomx librandomx)

set(RANDOMX_LIBRARIES ${RANDOMX_LIBRARY})
set(RANDOMX_INCLUDE_DIRS ${RANDOMX_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(RANDOMX DEFAULT_MSG RANDOMX_LIBRARY RANDOMX_INCLUDE_DIR)
