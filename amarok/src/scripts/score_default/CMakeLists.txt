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
    score_default.rb
  DESTINATION ${DATA_INSTALL_DIR}/amarok/scripts/score_default )

install( FILES
    COPYING README score_default.spec
  DESTINATION ${DATA_INSTALL_DIR}/amarok/scripts/score_default )
