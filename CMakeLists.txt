cmake_minimum_required(VERSION 3.0)

include(HunterGate)

HunterGate(
  URL "https://github.com/ruslo/hunter/archive/v0.23.83.tar.gz"
  SHA1 "12dec078717539eb7b03e6d2a17797cba9be9ba9"
  )

project(libxml2-example)

hunter_add_package(libxml2)
find_package(libxml2 CONFIG REQUIRED)

add_executable(boo main.c)

include_directories(${LIBXML2_INCLUDE_DIRS})
target_link_libraries(boo ${LIBXML2_LIBRARIES})
