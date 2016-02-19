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
  ${CMAKE_CURRENT_BINARY_DIR}/../amarokcore
  ${CMAKE_CURRENT_BINARY_DIR}/..
  ${CMAKE_CURRENT_SOURCE_DIR}/../amarokcore
  ${CMAKE_CURRENT_SOURCE_DIR}/..
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### statusbar (static) ########################

kde_add_library( statusbar STATIC_PIC AUTOMOC
  SOURCES
    statusBarBase.cpp statusbar.cpp overlayWidget.cpp popupMessage.cpp
    progressBar.cpp squeezedtextlabel.cpp queueLabel.cpp
  DEPENDENCIES
    amarokcore-static
)
