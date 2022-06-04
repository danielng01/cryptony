@echo off
set INTERVAL=300
:loop
git add -A
git commit -m "loop"
git push
timeout %INTERVAL%
goto:loop