# Matplotc

Matplotc is a C++ project inspired by matplotlib, aiming to provide simple plotting capabilities using OpenGL, GLEW, and GLFW.

## Features

- Simple and easy-to-use plotting functions
- Integration with OpenGL for rendering
- Support for basic plotting functionalities

## Requirements

- CMake 3.10 or higher
- OpenGL
- GLEW
- GLFW

## Building the Project

To build the project, follow these steps:

1. Clone the repository:
    ```sh
    git clone <repository-url>
    cd matplotc
    ```

2. Create a build directory and navigate into it:
    ```sh
    mkdir build
    cd build
    ```

3. Run CMake to configure the project:
    ```sh
    cmake ..
    ```

4. Build the project:
    ```sh
    make
    ```

## Running the Example

After building the project, you can run the example executable:

```sh
./examples/simple_plot