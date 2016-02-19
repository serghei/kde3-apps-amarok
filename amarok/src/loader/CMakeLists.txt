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
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### amarok (executable) #######################

kde_add_executable( amarok
  SOURCES loader.cpp
  LINK kdeui-shared
  DESTINATION ${BIN_INSTALL_DIR}
)
