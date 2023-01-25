@echo off
cd /d %~dp0
for /f "eol=; usebackq tokens=* delims=," %%A in ("mac.txt") do (call :subroutine %%A %%B)
GOTO :eof

:subroutine
if "%1" == "#" (GOTO :eof)
GOTO :btcom

:btcom
echo "Connecting %1 (%2) ..."
btcom -b %mac% -c -s110b
btcom -b %mac% -c -s111e
GOTO :eof
