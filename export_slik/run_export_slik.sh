#!/bin/sh

PENTAHO_PATH=/home/eeng/program/pdi-ce-8.0.0.0-28/data-integration
LOG_PATH=/home/eeng/program/export_slik/logs
TGL=$(date +"%Y%m%d")

rm -f $LOG_PATH/export_slik_$TGL.log

$PENTAHO_PATH/kitchen.sh -file=main_export_slik.kjb -logfile=$LOG_PATH/export_slik_$TGL.log -level=Detailed "-param:date_input=$1"
