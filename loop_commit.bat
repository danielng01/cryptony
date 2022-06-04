@echo off
set INTERVAL=300
:loop
commit.bat
timeout %INTERVAL%
goto:loop