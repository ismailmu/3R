@echo off
CLS
TITLE "run_mymdb"

SET "mymdb_path=%1"
java -jar MyMDB.jar 0 %mymdb_path%