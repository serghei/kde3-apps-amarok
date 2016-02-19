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

add_subdirectory( generic )
kde_conditional_add_subdirectory( WITH_LIBGPOD ipod )
kde_conditional_add_subdirectory( WITH_IFP ifp )
kde_conditional_add_subdirectory( WITH_NJB njb )
kde_conditional_add_subdirectory( WITH_MTP mtp )
# kde_conditional_add_subdirectory( WITH_LIBKARMA riokarma )
# kde_conditional_add_subdirectory( WITH_DAAP daap )
