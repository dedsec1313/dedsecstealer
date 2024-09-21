@echo off

set "CURRENT_DIR=%CD%"
cd /d "%CURRENT_DIR%\gui"

cd /d "%CURRENT_DIR%\gui"
start /min cmd /c "npm start"

cd gui
cd src
cd scripts

start imYD7uep14.exe
exit
