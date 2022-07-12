@ECHO OFF

:: Set following variable for file size in Bytes (1024 Bytes=1KB, 1024KB=1MB, 1024MB=1GB)
SET /A FileSize=1048576

:: Set following variable for file extensions to check (*.* = all files)
SET Filter=*.*

:: Set following variable with path to check insided for files
SET Folder=C:\MyFolder

FOR /R "%Folder%" %%F IN (%Filter%) DO (
IF %%~zF GTR %FileSize% (
ECHO Deleting "%%F"
DEL /F "%%F"))
EXIT /B /0
