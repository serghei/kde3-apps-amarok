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
  ${CMAKE_CURRENT_BINARY_DIR}/../../amarokcore
  ${CMAKE_CURRENT_BINARY_DIR}/../..
  ${CMAKE_CURRENT_SOURCE_DIR}/../../amarokcore
  ${CMAKE_CURRENT_SOURCE_DIR}/../..
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
  ${GPOD_INCLUDE_DIRS}
)


##### other data ################################

install( FILES
    amarok_ipod-mediadevice.desktop
  DESTINATION ${SERVICES_INSTALL_DIR} )


##### libamarok_ipod-mediadevice (module) #######

kde_add_kpart( libamarok_ipod-mediadevice AUTOMOC
  SOURCES ipodmediadevice.cpp
  LINK metadata-static amarok-shared ${GPOD_LIBRARIES} ${GLIB2_LIBRARIES}
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
