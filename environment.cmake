# Configure vcpkg toolchain
if(NOT DEFINED ${CMAKE_TOOLCHAIN_FILE})
  if(CMAKE_HOST_SYSTEM_NAME STREQUAL Windows)
    set(VCPKG_TARGET_TRIPLET x64-windows-static)
  elseif(CMAKE_HOST_SYSTEM_NAME STREQUAL Linux)
    set(VCPKG_TARGET_TRIPLET x64-linux)
  else()
    message(FATAL_ERROR "Unsupported platform")
  endif()

  # set(VCPKG_INSTALL_OPTIONS "--no-print-usage")

  set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/vendor/vcpkg/scripts/buildsystems/vcpkg.cmake)
endif()
