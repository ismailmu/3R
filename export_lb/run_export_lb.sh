#!/bin/sh

PENTAHO_PATH=/home/user1/program/data-integration
LOG_PATH=/home/user1/program/export_lb/logs
TGL=$(date +"%Y%m%d")

rm -f $LOG_PATH/export_lb_$TGL.log

$PENTAHO_PATH/kitchen.sh -file=main_export_lb.kjb -logfile=$LOG_PATH/export_slik_$TGL.log -level=Detailed "-param:date_input=$1"
