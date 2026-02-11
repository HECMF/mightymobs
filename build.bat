@echo off
REM build.bat - Package the Mighty Mobs addon into .mcaddon format
REM
REM Usage: build.bat
REM
REM Produces: build\MightyMobs.mcaddon
REM   (a zip containing MightyMobs_BP.mcpack and MightyMobs_RP.mcpack)
REM
REM Requires: PowerShell 5+ (included in Windows 10/11)

setlocal

set "SCRIPT_DIR=%~dp0"
set "BUILD_DIR=%SCRIPT_DIR%build"
set "BP_DIR=%SCRIPT_DIR%MightyMobs_BP"
set "RP_DIR=%SCRIPT_DIR%MightyMobs_RP"
set "ADDON_NAME=MightyMobs"

REM Clean previous build
if exist "%BUILD_DIR%" rmdir /s /q "%BUILD_DIR%"
mkdir "%BUILD_DIR%"

echo === Building %ADDON_NAME%.mcaddon ===

REM Package Behavior Pack
echo Packaging Behavior Pack...
powershell -NoProfile -Command "Compress-Archive -Path '%BP_DIR%\*' -DestinationPath '%BUILD_DIR%\%ADDON_NAME%_BP.mcpack' -Force"
if errorlevel 1 (
    echo ERROR: Failed to package Behavior Pack
    exit /b 1
)

REM Package Resource Pack
echo Packaging Resource Pack...
powershell -NoProfile -Command "Compress-Archive -Path '%RP_DIR%\*' -DestinationPath '%BUILD_DIR%\%ADDON_NAME%_RP.mcpack' -Force"
if errorlevel 1 (
    echo ERROR: Failed to package Resource Pack
    exit /b 1
)

REM Combine into .mcaddon
echo Creating .mcaddon...
powershell -NoProfile -Command "Compress-Archive -Path '%BUILD_DIR%\%ADDON_NAME%_BP.mcpack','%BUILD_DIR%\%ADDON_NAME%_RP.mcpack' -DestinationPath '%BUILD_DIR%\%ADDON_NAME%.mcaddon' -Force"
if errorlevel 1 (
    echo ERROR: Failed to create .mcaddon
    exit /b 1
)

echo.
echo === Build complete ===
echo Output: %BUILD_DIR%\%ADDON_NAME%.mcaddon
dir "%BUILD_DIR%\%ADDON_NAME%.mcaddon"

endlocal
