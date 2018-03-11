@echo off
setlocal enabledelayedexpansion
title League of Legends 1v1
mode con cols=80 lines=30
if not exist "Joshi vs Freddy - League of Legends HA.csv" echo Season;Match;Won;Joshi;Freddy;Picktype;Info>"Joshi vs Freddy - League of Legends HA.csv"
set "cmd=findstr /R /N "^^" "Joshi vs Freddy - League of Legends HA.csv" | find /C ":""
for /F %%a in ('!cmd!') do set match=%%a
set addf=
set /p season=Season: 
set /p won=Won: 
set /p jc=Joshi Champion: 
set /p fc=Freddy Champion: 
set /p pick=Picktype: 
:loop
set addc=0
set /p addc=Info: 
if "%addc%"=="0" goto finish
set addf=%addf%;%addc%
goto loop
:finish
echo %season%;%match%;%won%;%jc%;%fc%;%pick%;%addf% >> "Joshi vs Freddy - League of Legends HA.csv"
echo Content added: %season%;%match%;%won%;%jc%;%fc%;%pick%%addf%
pause >nul