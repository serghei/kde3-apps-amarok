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

kde_import( konqueror )

include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### other data ################################

install( FILES amarok.desktop DESTINATION ${DATA_INSTALL_DIR}/konqsidebartng/add )
install( FILES amarok.desktop DESTINATION ${DATA_INSTALL_DIR}/konqsidebartng/kicker_entries )
install( FILES amarok.desktop DESTINATION ${DATA_INSTALL_DIR}/konqsidebartng/entries )


##### konqsidebar_universalamarok (module) ######

kde_add_kpart( konqsidebar_universalamarok AUTOMOC
  SOURCES
    universalamarok.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/../amarokcore/amarokdcopiface.stub
  LINK konqsidebarplugin-shared khtml-shared
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
