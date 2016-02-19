#################################################
#
#  (C) 2012 Serghei Amelian
#  serghei (DOT) amelian (AT) gmail.com
#
#  Improvements and feedback are welcome
#
#  This file is released under GPL >= 2
#
#################################################

include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}/..
  ${CMAKE_CURRENT_SOURCE_DIR}/..
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### analyzers (static) ########################

kde_add_library( analyzers STATIC_PIC AUTOMOC
  SOURCES
    analyzerbase.cpp analyzerfactory.cpp baranalyzer.cpp
    blockanalyzer.cpp glanalyzer.cpp glanalyzer2.cpp glanalyzer3.cpp
    sonogram.cpp turbine.cpp boomanalyzer.cpp
)
