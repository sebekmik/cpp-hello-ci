cmake_minimum_required(VERSION 3.16)
project(cpp_hello_ci LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(app main.cpp)

enable_testing()

add_test(
  NAME output_matches_expected
  COMMAND bash -c "$<TARGET_FILE:app> > ${CMAKE_BINARY_DIR}/actual.txt && diff -u ${CMAKE_SOURCE_DIR}/expected.txt ${CMAKE_BINARY_DIR}/actual.txt"
)
