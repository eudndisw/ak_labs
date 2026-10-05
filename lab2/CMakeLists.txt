cmake_minimum_required(VERSION 3.10)
project(CalculatorProject)

set(CMAKE_CXX_STANDARD 17)
include_directories(include)

add_library(calculator STATIC src/calculator.cpp)
add_executable(calculator_exec src/main.cpp)
target_link_libraries(calculator_exec calculator)
