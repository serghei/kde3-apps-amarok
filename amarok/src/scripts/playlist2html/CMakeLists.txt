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

install( PROGRAMS
    playlist2html.py PlaylistServer.py
  DESTINATION ${DATA_INSTALL_DIR}/amarok/scripts/playlist2html )

install( FILES
    Playlist.py README playlist2html.spec PlaylistServer.spec
  DESTINATION ${DATA_INSTALL_DIR}/amarok/scripts/playlist2html )
