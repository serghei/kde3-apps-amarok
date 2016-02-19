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
  ${CMAKE_CURRENT_SOURCE_DIR}/..
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### amarokcollectionscanner (executable) ######

kde_add_executable( amarokcollectionscanner AUTOMOC
  SOURCES
    main.cpp collectionscannerdcopiface.skel
    collectionscannerdcophandler.cpp collectionscanner.cpp
  LINK metadata-static amarok-shared
  DESTINATION ${BIN_INSTALL_DIR}
)
