@echo off
color 0a
goto password
:password
cls
title Password
set password=Tesla
set /p typedpassword=Type in your password: 
if "%password%"=="%typedpassword%" (
goto Home Screen 
) else (
cls
echo You have entered the wrong password
pause
goto password 
)

:Home Screen
title Home Screen
cls
echo Press type the number next to the program you want to run
echo 1. Shut Down
echo 2. Color Settings
echo 3. Text file editor

echo.
set /p HSID=Enter number ID: 
if %HSID%==1 (goto 1)
else (
if %HSID%==2 (goto 2)
) else (
if %HSID%==3 (goto 3)
) else (
goto Home Screen)

:Shut Down
goto 1

:1
cls
title Shutdown
set /p SDID=Are You Sure you want to shutdown?[Y/N]: 
if %SDID%==Y (goto End)
else (
if %SDID%==N (goto Home Screen)
) else (
if %SDID%==y (goto End)
) else (
if %SDID%==n (goto Home Screen)
) else (
goto Shut Down)

:2
title Color Changer
cls
echo Inorder to change the color you need one number ant one letter
echo The number comes first then the letter
echo The Numbers change the background the letters change the text
echo.
echo 0 = Black	A = Light Green
echo 1 = Blue	B = Light Aqua
echo 2 = Green       C = Light Red
echo 3 = Aqua        D = Light Purple
echo 4 = Red         E = Light Yellow
echo 5 = Purple      F = Bright White
echo 6 = Yellow
echo 7 = White
echo 8 = Gray
echo 9 = Light Blue
echo.
echo.
set /p Color=Enter Color Code ID:
color %color% 
pause
goto Home Screen

:3
goto Text Options

:Text Options
cls
title Text Options
echo 1. New file
echo 2. Load file
echo 3. Go to homescreen
set /p TextID=What you want to do here: 
if %TextID%==1 (goto New Text File)
else (
if %TextID%==2 (goto Loaded File)
) else (
if %TextID%==3 (goto Home Screen)
) else (
goto Text Options)

:New Text File
cls
Title Text Editor
set /p TextFile=Type your text here: 
pause
goto 3

:Loaded File
cls
title Loaded File
echo %TextFile%
echo.
echo.
pause
goto 3

:End
cls
pause
goto exit