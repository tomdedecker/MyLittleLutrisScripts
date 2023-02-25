@echo off
color 0E

c:
if exist "c:\GOG Games\Tomb Raider 4" cd "c:\GOG Games\Tomb Raider 4"
if exist "c:\Tomb Raider 3" cd "c:\Tomb Raider 3"

goto launcher

:launcher
cls
echo.
echo.
echo.	------------------------------------------------
echo.		TOMB RAIDER IV
echo.	------------------------------------------------
echo.
echo.	1) Tomb Raider IV
echo.	2) Setup dialog box
echo.	3) How to play TR4 with a gamepad
echo.	4) Exit
echo.
echo.	------------------------------------------------
echo.
echo.




choice /c1234 /s /N Your choice? [1-4]:
if errorlevel 4 goto exit
if errorlevel 3 goto gamepad
if errorlevel 2 goto setup
if errorlevel 1 goto tr4


:tr4
cls
start tomb4.exe
goto :launcher


:setup
cls
echo.
echo.
echo.	------------------------------------------------
echo.		TOMB RAIDER IV - Setup
echo.	------------------------------------------------
echo.
echo.	Graphics Adapter	- choose ONLY dgVoodoo
echo.	Output Settings 	- choose ONLY dgVoodoo
echo.	Output Resolution	- choose your Desktop resolution
echo.	Others options		- You should not need to change others options
echo.
echo.	------------------------------------------------
echo.
echo.
start tomb4.exe -setup
pause
goto :launcher


:gamepad
cls
start explorer "gamepad profiles"
start explorer "gamepad profiles\tr4_gamepad_readme.html"
goto :launcher


:exit
exit