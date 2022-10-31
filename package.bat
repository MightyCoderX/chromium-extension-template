@echo off

for %%I in (.) do set dir=%%~nxI

if exist "dist/%dir%.pem" (
    echo Packing extension with already existing key file
    chrome.exe --pack-extension="%cd%\src" --pack-extension-key="%cd%\dist\%dir%.pem"
) else (
    echo Creating key file and packaging extension
    chrome.exe --pack-extension="%cd%\src"
    move ./src.pem ./dist/%dir%.pem
)

move ./src.crx ./dist/%dir%.crx
