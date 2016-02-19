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
  ${CMAKE_CURRENT_SOURCE_DIR}/..
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
) 


##### plugin (static) ########################

kde_moc( moc_SRCS pluginconfig.h )

kde_add_library( plugin STATIC_PIC
  SOURCES plugin.cpp ${moc_SRCS}
)
