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

include( CheckIncludeFile )
include( CheckStructHasMember )
include( CheckTypeSize )
include( FindPkgConfig )

check_type_size( int SIZEOF_INT )
check_type_size( long SIZEOF_LONG )

# find kdelibs
# FIXME should be more flexibile
set( CMAKE_MODULE_PATH "${CMAKE_INSTALL_PREFIX}/share/cmake" )
if( NOT EXISTS "${CMAKE_MODULE_PATH}/FindKDE3.cmake" )
  message( FATAL_ERROR
      "\n"
      "####################################################################\n "
      "${CMAKE_MODULE_PATH}/FindKDE3.cmake does not exists.\n "
      "Please pass corect CMAKE_INSTALL_PREFIX to cmake.\n"
      "####################################################################\n" )
endif( )
include( FindKDE3 )

kde_search_module( SQLITE sqlite3 )
kde_search_module( TAGLIB taglib )

#check_include_file( "mp4v2/mp4v2.h" HAVE_MP4V2_MP4V2_H )
#kde_search_library( MP4_LIBRARY mp4v2/mp4v2.h mp4v2 )

# libvisual support
if( WITH_LIBVISUAL )
  kde_search_module( VISUAL libvisual-0.4 )
  kde_search_module( SDL sdl )
endif( )

# xine
if( WITH_XINE )
  kde_search_module( XINE libxine )
endif( )

# libgpod
if( WITH_LIBGPOD )
  kde_search_module( GPOD libgpod-1.0 )
  set( HAVE_GPOD_060 1 )

  kde_search_module( GLIB2 glib-2.0 )

  kde_save_and_set( CMAKE_REQUIRED_INCLUDES ${GPOD_INCLUDE_DIRS} )
  check_struct_has_member( "struct _Itdb_Track" mediatype "gpod/itdb.h" HAVE_ITDB_MEDIATYPE )
  kde_restore( CMAKE_REQUIRED_INCLUDES )
endif( )

# ifp
if( WITH_IFP )
  kde_search_module( USB libusb )
  kde_search_library( IFP_LIBRARY ifp.h ifp )
endif( )

# njb
if( WITH_NJB )
  kde_search_module( NJB njb )
endif( )

# mtp
if( WITH_MTP )
  kde_search_module( MTP libmtp )
endif( )
