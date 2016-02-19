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
  ${CMAKE_CURRENT_SOURCE_DIR}/..
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
  ${TAGLIB_INCLUDE_DIRS}
)


##### metadata (static) #########################

set( asf_SRCS
  asf/asfattribute.cpp asf/asfproperties.cpp asf/asftag.cpp
  asf/asffile.cpp asf/taglib_asffiletyperesolver.cpp )

set( audible_SRCS
  audible/audibleproperties.cpp audible/audibletag.cpp
  audible/taglib_audiblefile.cpp
  audible/taglib_audiblefiletyperesolver.cpp )

set( rmff_SRCS
  rmff/rmff.cpp rmff/taglib_realmediafile.cpp
  rmff/taglib_realmediafiletyperesolver.cpp )

#set( mp4_SRCS
#  mp4/mp4properties.cpp mp4/mp4tag.cpp mp4/mp4file.cpp
#  mp4/taglib_mp4filetyperesolver.cpp )

set( aac_SRCS
  aac/aacfiletyperesolver.cpp )

set( wav_SRCS
  wav/wavproperties.cpp wav/wavfile.cpp wav/wavfiletyperesolver.cpp )

kde_add_library( metadata STATIC_PIC
  SOURCES
    ${asf_SRCS} ${audible_SRCS} ${rmff_SRCS} ${mp4_SRCS} ${aac_SRCS}
    ${wav_SRCS} tplugins.cpp
)
