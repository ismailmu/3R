@echo off
CLS
TITLE "run_export_lb"

SETLOCAL ENABLEDELAYEDEXPANSION

REM INIT

SET "PENTAHO_PATH=C:\12023227\Tools\Program\pdi-ce-8.0.0.0-28\data-integration"
SET "LOG_PATH=C:\12023227\Tools\Program\3R\PROGRAM\pdi\export_lb\logs"

SET "full_wmic=C:\Windows\System32\wbem\WMIC.EXE"

REM INIT DATE
:: Check WMIC is available
"%full_wmic%" Alias /? >NUL 2>&1 || GOTO gagal

:: Use WMIC to retrieve date and time
FOR /F "skip=1 tokens=1-6" %%G IN ('WMIC Path Win32_LocalTime Get Day^,Hour^,Minute^,Month^,Second^,Year /Format:table') DO (
   IF "%%~L"=="" goto s_done
      SET _yyyy=%%L
      SET _mm=00%%J
      SET _dd=00%%G
      SET _hour=00%%H
      SET _minute=00%%I
	  SET _second=00%%K
)

:s_done

:: Pad digits with leading zeros
      SET _mm=%_mm:~-2%
      SET _dd=%_dd:~-2%
      SET _hour=%_hour:~-2%
      SET _minute=%_minute:~-2%
	  SET _second=%_second:~-2%

:: Display the date/time in ISO 8601 format:
SET tgl=%_yyyy%%_mm%%_dd%
SET tglJam=%_yyyy%-%_mm%-%_dd% %_hour%:%_minute%:%_second%

DEL %LOG_PATH%\export_lb_%tgl%.log

%PENTAHO_PATH%\kitchen.bat /file=main_export_lb.kjb /logfile=%LOG_PATH%\export_lb_%tgl%.log /level=Detailed "/param:date_input=%1"