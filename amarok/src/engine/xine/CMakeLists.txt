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
  ${CMAKE_CURRENT_SOURCE_DIR}/../../amarokcore
  ${CMAKE_CURRENT_SOURCE_DIR}/../..
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
  ${XINE_INCLUDE_DIRS}
)


##### other data ################################

install( FILES amarok_xine-engine.desktop DESTINATION ${SERVICES_INSTALL_DIR} )
install( FILES xinecfg.kcfg DESTINATION ${KCFG_INSTALL_DIR} )


##### libamarok_xine-engine (module) ############

kde_add_kpart( libamarok_xine-engine AUTOMOC
  SOURCES
    xine-scope.c xinecfg.kcfgc xine-engine.cpp xineconfigbase.ui
    xine-config.cpp
  LINK plugin-static amarok-shared ${XINE_LIBRARIES}
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
