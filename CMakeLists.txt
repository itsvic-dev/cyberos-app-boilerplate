# omame's CyberOS app boilerplate
# Copyright (c) 2021 omame <me@omame.tech>
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

cmake_minimum_required(VERSION 3.20)

set(PROJECT_NAME omame-cyber-boilerplate)
project(${PROJECT_NAME})

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(QT Core Gui Quick QuickControls2 Widgets LinguistTools)
find_package(Qt5 REQUIRED ${QT})
find_package(MeuiKit REQUIRED)

set(SRCS
    src/main.cpp
)

set(RESOURCES
    src/resources.qrc
)

add_executable(${PROJECT_NAME} ${SRCS} ${RESOURCES})
target_link_libraries(${PROJECT_NAME}
    Qt5::Core
    Qt5::Quick
    Qt5::QuickControls2
    Qt5::Widgets
    MeuiKit
)

file(GLOB TS_FILES translations/*.ts)
qt5_create_translation(QM_FILES ${TS_FILES})
add_custom_target(translations DEPENDS ${QM_FILES} SOURCES ${TS_FILES})
add_dependencies(${PROJECT_NAME} translations)
install(FILES ${QM_FILES} DESTINATION /usr/share/${PROJECT_NAME}/translations)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION /usr/bin)

# install(FILES
#     ${PROJECT_NAME}.desktop
#     DESTINATION /usr/share/applications/
#     COMPONENT Runtime
# )
