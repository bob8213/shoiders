cmake_minimum_required (VERSION 3.8)

project(shoiders CXX)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_subdirectory( deps )

add_executable(shoiders src/main.cpp)
target_link_libraries( shoiders PUBLIC glad glfw)

add_custom_command(TARGET shoiders PRE_BUILD
                   COMMAND ${CMAKE_COMMAND} -E copy_directory
                 ${CMAKE_SOURCE_DIR}/res/ $<TARGET_FILE_DIR:shoiders>)
