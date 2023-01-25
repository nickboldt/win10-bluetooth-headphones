@echo off
cd /d %~dp0
for /f "eol=; usebackq tokens=* delims=," %%A in ("mac.txt") do (call :subroutine %%A %%B)
GOTO :eof

:subroutine
if "%1" == "#" (GOTO :eof)
GOTO :btcom

:btcom
echo "Disconnecting %1 (%2) ..."
btcom -b %2 -r -s110b
btcom -b %2 -r -s111e
GOTO :eof