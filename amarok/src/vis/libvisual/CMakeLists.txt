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
  ${VISUAL_INCLUDE_DIRS}
  ${SDL_INCLUDE_DIRS}
)


##### amarok_libvisual (executable) #############

kde_add_executable( amarok_libvisual
  SOURCES libvisual.cpp
  LINK ${VISUAL_LIBRARIES} ${SDL_LIBRARIES}
  DESTINATION ${BIN_INSTALL_DIR}
)
