CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
CMAKE_POLICY(SET CMP0015 NEW)

PROJECT(openGL)

INCLUDE_DIRECTORIES(3rdLib/include)
INCLUDE_DIRECTORIES(include)

link_directories(3rdLib/lib)

SET(OPENGL_SRC_LIST src/main.cpp src/Shader.cpp)
SET(CAMERA_SRC_LIST src/camera.cpp src/Shader.cpp)

ADD_EXECUTABLE(opengl ${OPENGL_SRC_LIST})
target_link_libraries(opengl opengl32.lib glfw3.lib SOIL.lib glew32sd.lib)


ADD_EXECUTABLE(camera ${CAMERA_SRC_LIST})
target_link_libraries(camera opengl32.lib glfw3.lib SOIL.lib glew32sd.lib)

install(TARGETS opengl camera
        RUNTIME
        DESTINATION bin
        COMPONENT applications
        )

install(DIRECTORY ${PROJECT_SOURCE_DIR}/resource
        DESTINATION .
	)