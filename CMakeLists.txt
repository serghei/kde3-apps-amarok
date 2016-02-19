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

cmake_minimum_required( VERSION 2.8 )

if( NOT CMAKE_VERSION VERSION_LESS 2.8.12 )
  cmake_policy( SET CMP0022 NEW )
endif ( )

if( NOT CMAKE_VERSION VERSION_LESS 3.0 )
  cmake_policy( SET CMP0026 OLD )
  cmake_policy( SET CMP0046 OLD )
endif ( )

if( NOT CMAKE_VERSION VERSION_LESS 3.1 )
  cmake_policy( SET CMP0054 NEW )
endif ( )


##### general package setup #####################

project( amarok )


##### features ##################################

option( WITH_ALL_FEATURES "Enable all possible features" OFF )
option( WITH_LIBVISUAL "Enable libvisual support" ${WITH_ALL_FEATURES} )
option( WITH_KONQSIDEBAR "Enable konq sidebar" ${WITH_ALL_FEATURES} )
option( WITH_XINE "Enable xine support" ${WITH_ALL_FEATURES} )
option( WITH_LIBGPOD "Enable iPod support" ${WITH_ALL_FEATURES} )
option( WITH_IFP "Enable iRiver's iFP support" ${WITH_ALL_FEATURES} )
option( WITH_NJB "Enable Creative Nomad Jukebox support" ${WITH_ALL_FEATURES} )
option( WITH_MTP "Enable MTP support" ${WITH_ALL_FEATURES} )


##### user requested modules ####################

option( BUILD_ALL "Build all" OFF )
option( BUILD_DOCUMENTATION "Build documentation" ${BUILD_ALL} )
option( BUILD_TRANSLATIONS "Build translations" ${BUILD_ALL} )


##### configure checks ##########################

include( ConfigureChecks.cmake )


##### source directories ########################

add_subdirectory( amarok )
kde_conditional_add_subdirectory( BUILD_DOCUMENTATION doc )
kde_conditional_add_subdirectory( BUILD_TRANSLATIONS po )


##### write configure files #####################

configure_file( config.h.cmake config.h @ONLY )
