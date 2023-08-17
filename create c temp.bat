@echo off

if "%OS%" == "Windows_NT" goto WinNT

:Win9X
echo Don't be stupid! Win9x don't know Services
echo Please use apache_start.bat instead
goto exit

:WinNT
c:
md c:\temp\1
md c:\temp\2


:exit
pause
