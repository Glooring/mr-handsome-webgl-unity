@echo off
setlocal enabledelayedexpansion

REM Change the directory to the one containing the .jfif files
cd /d "C:\path\to\your\folder"

REM Loop through all .jfif files in the folder
for %%f in (*.jfif) do (
    REM Get the file name without the extension
    set "filename=%%~nf"
    
    REM Convert the .jfif file to .png
    magick "%%f" "!filename!.png"
)

endlocal
echo Conversion complete.
pause
