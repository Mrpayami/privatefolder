@echo off
setlocal

set "folderPath=%USERPROFILE%\Desktop\PrivateFolder"

if not exist "%folderPath%" (
    mkdir "%folderPath%"
) else (
    echo Folder already exists.
)

endlocal