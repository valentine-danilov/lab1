cmake_minimum_required(VERSION 3.15)
project(lab1)

set(CMAKE_CXX_STANDARD 14)


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fopenmp -O3")

add_executable(lab1 main.cpp random.cpp random.h timer_util.h time_util.cpp)

find_package(OpenMP REQUIRED) # Find the package
target_link_libraries(${PROJECT_NAME} ${OpenMP_CXX_LIBRARIES})