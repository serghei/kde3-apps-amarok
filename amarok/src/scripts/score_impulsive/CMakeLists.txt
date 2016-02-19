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
    score_impulsive.rb
  DESTINATION ${DATA_INSTALL_DIR}/amarok/scripts/score_impulsive )

install( FILES
    COPYING README score_impulsive.spec
  DESTINATION ${DATA_INSTALL_DIR}/amarok/scripts/score_impulsive )
