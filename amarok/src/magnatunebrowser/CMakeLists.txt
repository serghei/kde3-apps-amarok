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
  ${CMAKE_CURRENT_BINARY_DIR}/../amarokcore
  ${CMAKE_CURRENT_SOURCE_DIR}/../amarokcore
  ${CMAKE_CURRENT_SOURCE_DIR}/../statusbar
  ${CMAKE_CURRENT_SOURCE_DIR}/..
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### magnatunebrowser (static) #################

kde_add_library( magnatunebrowser STATIC_PIC AUTOMOC
  SOURCES
    magnatuneartistinfobox.cpp magnatunebrowser.cpp
    magnatunedownloaddialogbase.ui magnatunedownloaddialog.cpp
    magnatunepurchasedialogbase.ui magnatunepurchasedialog.cpp
    magnatunepurchasehandler.cpp magnatunetypes.cpp
    magnatunexmlparser.cpp magnatunedatabasehandler.cpp
    magnatunelistviewitems.cpp magnatunelistview.cpp
    magnatuneredownloaddialog.cpp magnatuneredownloadhandler.cpp
    magnatunedownloadinfo.cpp magnatunealbumdownloader.cpp
    magnatuneredownloaddialogbase.ui
  DEPENDENCIES amarokcore
)
