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

add_subdirectory( amarokcore )
add_subdirectory( magnatunebrowser )
add_subdirectory( analyzers )
add_subdirectory( data )
add_subdirectory( plugin )
add_subdirectory( images )
add_subdirectory( loader )
add_subdirectory( scripts )
add_subdirectory( themes )
add_subdirectory( vis )
add_subdirectory( metadata )
kde_conditional_add_subdirectory( WITH_KONQSIDEBAR konquisidebar )
add_subdirectory( statusbar )
add_subdirectory( engine )
add_subdirectory( mediadevice )
add_subdirectory( device )
add_subdirectory( collectionscanner )

include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}/amarokcore
  ${CMAKE_CURRENT_BINARY_DIR}/magnatunebrowser
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/amarokcore
  ${CMAKE_CURRENT_SOURCE_DIR}/analyzers
  ${CMAKE_CURRENT_SOURCE_DIR}/plugin
  ${CMAKE_CURRENT_SOURCE_DIR}/statusbar
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
  ${TAGLIB_INCLUDE_DIRS}
  ${SQLITE_INCLUDE_DIRS}
)


##### other data ################################

kde_install_icons( )
install( PROGRAMS amarok_proxy.rb DESTINATION ${BIN_INSTALL_DIR} )
install( FILES amarokrc DESTINATION ${CONFIG_INSTALL_DIR} )
install( FILES amarok_plugin.desktop amarok_codecinstall.desktop DESTINATION ${SERVICETYPES_INSTALL_DIR} )
install( FILES amarokitpc.protocol amaroklastfm.protocol amarokpcast.protocol DESTINATION ${SERVICES_INSTALL_DIR} )
install( FILES amarokui.rc DESTINATION ${DATA_INSTALL_DIR}/amarok )
install( FILES amarok_addaspodcast.desktop amarok_append.desktop amarok_play_audiocd.desktop DESTINATION ${DATA_INSTALL_DIR}/konqueror/servicemenus )
install( FILES amarok.profile.xml DESTINATION ${DATA_INSTALL_DIR}/profiles )
install( FILES amarok.desktop DESTINATION ${XDG_APPS_INSTALL_DIR} )


##### amarok (shared) ###########################

kde_add_library( amarok SHARED AUTOMOC
  SOURCES
    Options1.ui Options1.ui.h Options2.ui Options4.ui Options5.ui
    Options7.ui Options8.ui app.cpp actionclasses.cpp atomicstring.cpp
    atomicurl.cpp browserbar.cpp clicklineedit.cpp collectionbrowser.cpp
    collectiondb.cpp columnlist.cpp configdialog.cpp contextbrowser.cpp
    coverfetcher.cpp covermanager.cpp cuefile.cpp dbsetup.ui dbsetup.ui.h
    deletedialog.cpp deletedialogbase.ui deviceconfiguredialog.cpp
    devicemanager.cpp directorylist.cpp dynamicmode.cpp enginebase.cpp
    enginecontroller.cpp engineobserver.cpp equalizergraph.cpp
    equalizerpresetmanager.cpp equalizersetup.cpp expression.cpp fht.cpp
    filebrowser.cpp firstrunwizard.ui hintlineedit.cpp htmlview.cpp
    iconloader.cpp k3bexporter.cpp kbookmarkhandler.cpp ktrm.cpp
    lastfm.cpp mediabrowser.cpp mediadevicemanager.cpp medium.cpp
    mediumpluginmanager.cpp metabundle.cpp metabundlesaver.cpp
    moodbar.cpp mountpointmanager.cpp multitabbar.cpp
    mydiroperator.cpp newdynamic.ui organizecollectiondialog.ui osd.cpp
    pixmapviewer.cpp playerwindow.cpp playlist.cpp playlistbrowser.cpp
    playlistbrowseritem.cpp playlistitem.cpp playlistloader.cpp
    playlistselection.cpp playlistwindow.cpp pluginmanager.cpp
    podcastsettings.cpp podcastsettingsbase.ui prettypopupmenu.cpp
    queuemanager.cpp refreshimages.cpp scancontroller.cpp
    scriptmanager.cpp scriptmanagerbase.ui scrobbler.cpp sliderwidget.cpp
    smartplaylisteditor.cpp socketserver.cpp starmanager.cpp
    statistics.cpp systray.cpp tagdialog.cpp tagdialogbase.ui
    tagguesser.cpp tagguesserconfigdialog.ui threadmanager.cpp
    tooltip.cpp trackpickerdialog.cpp trackpickerdialogbase.ui
    tracktooltip.cpp transferdialog.cpp xmlloader.cpp xspfplaylist.cpp
    editfilterdialog.cpp
  VERSION 0.0.0
  LINK
    amarokcore-static metadata-static statusbar-static analyzers-static magnatunebrowser-static plugin-static
    khtml-shared knewstuff-shared
    ${MP4_LIBRARY} ${TAGLIB_LIBRARIES} ${SQLITE_LIBRARIES} pthread
  DESTINATION ${LIB_INSTALL_DIR}
)


##### amarokapp (executable) ####################

kde_add_executable( amarokapp AUTOMOC
  SOURCES main.cpp
  LINK amarokcore-static metadata-static amarok-shared
  DESTINATION ${BIN_INSTALL_DIR}
)
