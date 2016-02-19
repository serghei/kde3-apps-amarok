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
  ${CMAKE_CURRENT_SOURCE_DIR}/../..
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
  ${MTP_INCLUDE_DIRS}
)


##### other data ################################

install( FILES amarok_mtp-mediadevice.desktop DESTINATION ${SERVICES_INSTALL_DIR} )


##### libamarok_mtp-mediadevice (module) ########

kde_add_kpart( libamarok_mtp-mediadevice AUTOMOC
  SOURCES mtpmediadevice.cpp
  LINK amarok-shared ${MTP_LIBRARIES}
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
