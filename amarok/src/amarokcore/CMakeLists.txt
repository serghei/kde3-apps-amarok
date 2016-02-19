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
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/../statusbar
  ${CMAKE_CURRENT_SOURCE_DIR}/..
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
  ${TAGLIB_INCLUDE_DIRS}
)

##### other data ################################

install( FILES amarok.kcfg DESTINATION ${KCFG_INSTALL_DIR} )


##### amarokcore (static) #######################

kde_add_library( amarokcore STATIC_PIC AUTOMOC
  SOURCES
    amarokdcopiface.skel amarokdcophandler.cpp amarokconfig.kcfgc
    crashhandler.cpp
)
