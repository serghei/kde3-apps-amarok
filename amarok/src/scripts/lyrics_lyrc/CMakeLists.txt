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
    lyrics_lyrc.rb
  DESTINATION ${DATA_INSTALL_DIR}/amarok/scripts/lyrics_lyrc )

install( FILES
    COPYING README lyrics_lyrc.spec
  DESTINATION ${DATA_INSTALL_DIR}/amarok/scripts/lyrics_lyrc )
