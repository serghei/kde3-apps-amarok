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
)


##### other data ################################

install( FILES amarok_ifp-mediadevice.desktop DESTINATION ${SERVICES_INSTALL_DIR} )


##### libamarok_ifp-mediadevice (module) ########

kde_add_kpart( libamarok_ifp-mediadevice AUTOMOC
  SOURCES ifpmediadevice.cpp
  LINK amarok-shared ${IFP_LIBRARY} ${USB_LIBRARIES}
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
