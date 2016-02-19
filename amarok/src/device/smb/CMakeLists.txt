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
  ${CMAKE_CURRENT_SOURCE_DIR}/../..
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### other data ################################

install( FILES amarok_smb-device.desktop DESTINATION ${SERVICES_INSTALL_DIR} )


##### libamarok_smb-device (module) #############

kde_add_kpart( libamarok_smb-device
  SOURCES smbdevicehandler.cpp
  LINK amarok-shared
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
