cmake_minimum_required(VERSION 3.10)
project(SimplePlotter)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find required packages
find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
find_package(glfw3 REQUIRED)

# Create the library
add_library(plotter
    src/plotter.cpp
)

# Set include directories for the library
target_include_directories(plotter PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# Link libraries
target_link_libraries(plotter
    OpenGL::GL
    GLEW::GLEW
    glfw
)

# Create example executable
add_executable(simple_plot examples/simple_plot.cpp)
target_link_libraries(simple_plot PRIVATE plotter)
