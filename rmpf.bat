@echo off
set "folderPath=%USERPROFILE%\Desktop\PrivateFolder"

:: حذف محتویات پوشه
if exist "%folderPath%" (
    del /f /q "%folderPath%\*"
    rmdir /s /q "%folderPath%"
    echo All contents in the folder have been permanently deleted.
) else (
    echo The folder does not exist.
)
pause