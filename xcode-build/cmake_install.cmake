# Install script for directory: /Users/mikeyang/development_things/key_input_tool/key_input_tool

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

set(CMAKE_BINARY_DIR "/Users/mikeyang/development_things/key_input_tool/key_input_tool/xcode-build")

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/mikeyang/development_things/key_input_tool/key_input_tool/xcode-build/Debug/key_input_tool.app" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./key_input_tool.app/Contents/MacOS/key_input_tool" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./key_input_tool.app/Contents/MacOS/key_input_tool")
      execute_process(COMMAND /Users/mikeyang/anaconda3/bin/install_name_tool
        -delete_rpath "/Users/mikeyang/anaconda3/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./key_input_tool.app/Contents/MacOS/key_input_tool")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/mikeyang/development_things/key_input_tool/key_input_tool/xcode-build/Release/key_input_tool.app" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./key_input_tool.app/Contents/MacOS/key_input_tool" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./key_input_tool.app/Contents/MacOS/key_input_tool")
      execute_process(COMMAND /Users/mikeyang/anaconda3/bin/install_name_tool
        -delete_rpath "/Users/mikeyang/anaconda3/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./key_input_tool.app/Contents/MacOS/key_input_tool")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/mikeyang/development_things/key_input_tool/key_input_tool/xcode-build/MinSizeRel/key_input_tool.app" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./key_input_tool.app/Contents/MacOS/key_input_tool" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./key_input_tool.app/Contents/MacOS/key_input_tool")
      execute_process(COMMAND /Users/mikeyang/anaconda3/bin/install_name_tool
        -delete_rpath "/Users/mikeyang/anaconda3/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./key_input_tool.app/Contents/MacOS/key_input_tool")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/mikeyang/development_things/key_input_tool/key_input_tool/xcode-build/RelWithDebInfo/key_input_tool.app" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./key_input_tool.app/Contents/MacOS/key_input_tool" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./key_input_tool.app/Contents/MacOS/key_input_tool")
      execute_process(COMMAND /Users/mikeyang/anaconda3/bin/install_name_tool
        -delete_rpath "/Users/mikeyang/anaconda3/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./key_input_tool.app/Contents/MacOS/key_input_tool")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/mikeyang/development_things/key_input_tool/key_input_tool/xcode-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
