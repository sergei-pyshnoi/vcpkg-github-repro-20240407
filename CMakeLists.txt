cmake_minimum_required(VERSION 3.10)

project(Vcpkg.GitHub.Repro VERSION 1.0.0)

find_package(PkgConfig REQUIRED)
find_package(OpenSSL REQUIRED)
pkg_check_modules(libusb REQUIRED IMPORTED_TARGET libusb-1.0)

add_library(Vcpkg.GitHub.Repro SHARED test.c)
target_include_directories(Vcpkg.GitHub.Repro PRIVATE ${LIBUSB_INCLUDE_DIRS})
target_link_libraries(Vcpkg.GitHub.Repro PRIVATE PkgConfig::libusb)
