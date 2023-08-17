@echo off

if "%OS%" == "Windows_NT" goto WinNT

:Win9X
echo Don't be stupid! Win9x don't know Services
echo Please use apache_start.bat instead
goto exit

:WinNT
echo Installing Apache2.4 as an Service
d:\server\bin\apache\httpd-2.4.57-win64-VS17\bin\httpd.exe -k install -n "Apache2_4"
echo Now we Start Apache2.4 :)
net start Apache2_4

echo Installing MySQL as an Service
d:\server\bin\mysql\mysql-8.1.0-winx64\bin\mysqld.exe --install MySQL --defaults-file=d:\server\bin\mysql\mysql-8.1.0-winx64\my.ini
echo Now we Start MySQL
net start MySQL

:exit
pause
