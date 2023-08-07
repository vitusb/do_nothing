@echo off
cls
setlocal

REM :: ###############################################################
REM :: # Set project vars --- BEGIN ---
REM :: ###############################################################

set fsource=Do_Nothing_Gui.c
REM :: set fsource=Do_Nothing_Console.c
set fbinary=Do_Nothing_Gui_x64.exe
REM :: set fbinary=Do_Nothing_Console_x64.exe
set fresource=project.o
set frcsource=project.rc

REM :: ###############################################################
REM :: # Set project vars ---  END  ---
REM :: ###############################################################

REM :: Set output sorting
set DIRCMD=/O:GNE

REM :: relative path to absolute path -DRIVE-
set drive=%~d0
set drivep=%drive%
If $#\#$==$#%drive:~-1%#$ set drivep=%drive:~0,-1%
set drivename=%drivep%

REM :: relative path to absolute path -PATH-
set pathn=%~p0
set pathp=%pathn%
If $#\#$==$#%pathn:~-1%#$ set pathp=%pathn:~0,-1%
set pathname=%pathp%

set HOMEDRIVE=%drivename%
set HOMEPATH=%pathname%
REM :: %EXEDIR% is now the reference to the absolute PATH of
REM :: script-execution.
set EXEDIR=%HOMEDRIVE%%HOMEPATH%

REM :: Fix error of path-relocation on SHARES (see hint above) ...
REM :: if not exist "%EXEDIR%\%SCRIPTN%" set EXEDIR=%~f0\..
set EXEDIR=%~f0\..

REM :: MINGW BIN
set PATH=%EXEDIR%;%EXEDIR%\..

REM :: System-Path
set PATH=%PATH%;%systemdrive%\windows\system32;%systemdrive%\windows

if not exist "%EXEDIR%\%fsource%"   goto ferr
if not exist "%EXEDIR%\%frcsource%" goto ferr

echo.Building "%fsource%",
echo.  please wait ...

echo.
REM :: windres.exe -O coff "%EXEDIR%\%frcsource%" -o "%EXEDIR%\%fresource%"
windres.exe -D IDC_STATIC=-1 -O coff "%EXEDIR%\%frcsource%" -o "%EXEDIR%\%fresource%"
tcc.exe "%EXEDIR%\%fsource%" "%EXEDIR%\%fresource%" -o "%EXEDIR%\%fbinary%"
goto end

:ferr
echo.
echo.File "%fsource%" or "%frcsource%" not found ...
echo.Please check vars in header of this script or filenames.
goto end

:end
endlocal
echo.
echo.Hit ENTER to continue ...
pause>nul
