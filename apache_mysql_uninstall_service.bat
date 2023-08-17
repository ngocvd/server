@echo off

if "%OS%" == "Windows_NT" goto WinNT

:Win9X
echo Don't be stupid! Win9x don't know Services
echo Please use apache_start.bat instead
goto exit

:WinNT
echo Now we Stop Apache2.4 :)
net stop Apache2_4
echo UnInstalling Apache2.4 as an Service
d:\server\bin\apache\httpd-2.4.57-win64-VS17\bin\httpd.exe -k uninstall -n "Apache2_4"


echo Now we Stop MySQL
net stop MySQL
echo UnInstalling MySQL as an Service
sc delete MySQL


:exit
pause
