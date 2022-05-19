@echo off
color 0a
goto password
:password
title Password
set password=Tesla
set /p typedpassword=Type in your password: 
if "%password%"=="%typedpassword%" (
goto Home Screen 
) else (
cls
goto password 

)

:Home Screen
title Home Screen
cls
echo Press type the number next to the program you want to run
echo 1. Shut Down
echo 2. Color Settings

echo.
set /p HSID=Enter number ID: 
goto %HSID%

:1
cls
title Shutdown
set /p var=Are You Sure?[Y/N]: 
if %var%== N goto Home Screen
if %var%== Y goto End

:End
cls
pause
goto exit

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
