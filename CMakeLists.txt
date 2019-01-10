CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

SET(PROJECT_ROOT_DIR .)
PROJECT(openGL)

INCLUDE_DIRECTORIES(${PROJECT_ROOT_DIR}/3rdLib/include)
INCLUDE_DIRECTORIES(${PROJECT_ROOT_DIR}/include)

link_directories(${PROJECT_ROOT_DIR}/3rdLib/lib)

SET(SRC_LIST src/main.cpp)

ADD_EXECUTABLE(opengl.exe ${SRC_LIST})
target_link_libraries(opengl.exe -Wl,--start-group opengl32.lib glfw3.lib SOIL.lib glew32sd.lib -Wl,--end-group)
