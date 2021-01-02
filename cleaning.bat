@echo off

set "d=%Userprofile%\Desktop"

cd %d%

set "fld=c:\temp\%date%"

mkdir %fld%

xcopy *.* %fld% /s /e

FOR /D %%i in (*) do (RMDIR /S /Q "%%~i" && echo %%~i)

for /f "delims=" %%a in ('dir /a-d/b "%d%"^|findstr /rv /c:"cleaning.bat$" /c:"^.ink$" /c:".lnk" /c:".Y"') do del /q "%d%\%%a"

exitt
