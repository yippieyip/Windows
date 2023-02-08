@echo off
title Ryan's Startup Automation
goto :mainMenu

:mainMenu
cls
color B
echo.               
echo                ---------
echo                MAIN MENU
echo                ---------
echo.

echo.
echo 1) (Debloat)           ------------------
echo                             Debloat
echo                        ------------------
echo.

echo.
echo 2) (Tweaks)           ------------------
echo                             Tweaks
echo                       ------------------
echo.

echo.
echo 0) (Quit)             ------------------
echo                              Quit
echo                       ------------------
echo.

set /p choice=Type your choice then press Enter:
if %choice%==1 (goto :debloater) 
if %choice%==2 (goto :tweaksMenu)
if %choice%==0 (exit) else (goto :wrongChoice)

:wrongChoice
cls
color E
echo ------------
echo Wrong Choice
echo ------------
echo.
echo Press any key to return to the Main Menu.
pause >nul
goto :mainMenu

:debloater
set /p enter="Press ENTER twice to start debloating"
set /p enter2="Press ENTER one more time to start debloating!"
echo Starting to debloat...

echo Uninstalling Microsoft Bloat...
winget uninstall Clipchamp.Clipchamp_yxz26nhyzhsrt
winget uninstall Microsoft.BingNews_8wekyb3d8bbwe
winget uninstall Microsoft.Todos_8wekyb3d8bbwe
winget uninstall skype
winget uninstall Microsoft.ZuneMusic_8wekyb3d8bbwe
winget uninstall Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe
winget uninstall Microsoft.Getstarted_8wekyb3d8bbwe
winget uninstall Microsoft.3DViewer_8wekyb3d8bbwe
winget uninstall Microsoft.Microsoft3DViewer_8wekyb3d8bbwe
winget uninstall Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe
winget uninstall Microsoft.MSPaint_8wekyb3d8bbwe
winget uninstall Microsoft.BingWeather_8wekyb3d8bbwe
winget uninstall microsoft.windowscommunicationsapps_8wekyb3d8bbwe
winget uninstall Microsoft.YourPhone_8wekyb3d8bbwe
winget uninstall Microsoft.People_8wekyb3d8bbwe
winget uninstall Microsoft.Wallet_8wekyb3d8bbwe
winget uninstall Microsoft.WindowsMaps_8wekyb3d8bbwe
winget uninstall Microsoft.Office.OneNote_8wekyb3d8bbwe
winget uninstall Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe
winget uninstall Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe
winget uninstall Microsoft.ZuneVideo_8wekyb3d8bbwe
winget uninstall Microsoft.MixedReality.Portal_8wekyb3d8bbwe
winget uninstall Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe
winget uninstall Microsoft.GetHelp_8wekyb3d8bbwe

echo Uninstalling Xbox Bloat...
winget uninstall Microsoft.XboxApp_8wekyb3d8bbwe
winget uninstall Microsoft.Xbox.TCUI_8wekyb3d8bbwe
winget uninstall Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe
winget uninstall Microsoft.XboxIdentityProvider_8wekyb3d8bbwe
winget uninstall Microsoft.GamingApp_8wekyb3d8bbwe
:: winget uninstall Microsoft.XboxGamingOverlay_8wekyb3d8bbwe
:: winget uninstall Microsoft.XboxGamingOverlay_8wekyb3d8bbwe
:: winget uninstall Microsoft.XboxGameOverlay_8wekyb3d8bbwe

echo Uninstalling Cortana...
winget uninstall cortana

echo Uninstalling OneDrive...
winget uninstall Microsoft.OneDrive
winget uninstall Microsoft.OneDriveSync_8wekyb3d8bbwe

echo Uninstalling Teams...
winget uninstall MicrosoftTeams_8wekyb3d8bbwe
winget uninstall Microsoft.Teams

echo.
echo             --------------------------------------------------------
echo              Done Uninstalling Bloat. Press any button to continue.
echo             --------------------------------------------------------
echo.
pause >nul
goto :debloatDone

:debloatDone
cls
color B
echo Done! 
set /p proceed=Press 1 to proceed to the Tweaks Menu. Press 2 to go to the Install Menu or Press 0 to go back to Main Menu.:
if %proceed%==1 (goto :tweaksMenu)
if %proceed%==2 (goto :installMenu)
if %proceed%==0 (goto :mainMenu) else (goto :wrongChoice1)

:wrongChoice1
cls
color E
echo ------------
echo Wrong Choice
echo ------------
echo.
set /p wrongChoice1=Press 1 to go to the Tweaks Menu. Press 2 to go to the Install Menu or Press 0 to go back to Main Menu.:
if %proceed%==1 (goto :tweaksMenu)
if %proceed%==2 (goto :installMenu)
if %proceed%==0 (goto :mainMenu) else (goto :mainMenu)

:tweaksMenu
cls
color B
echo.
echo                -----------
echo                TWEAKS MENU
echo                -----------
echo.

echo.
echo 1) (Return Windows 10 Right Click)           ------------------------------
echo                                              Return Windows 10 Right Click
echo                                              ------------------------------
echo.

echo.
echo 2) (Disable Hibernation)                     ------------------------------
echo                                              Disable Hibernation
echo                                              ------------------------------
echo.

echo.
echo 3) (More Tweaks by Chris Titus)              ------------------------------
echo                                              More Tweaks by Chris Titus
echo                                              ------------------------------
echo.

echo.
echo 4) (Windows Activation)                      ------------------------------
echo                                              Windows Activation
echo                                              ------------------------------
echo.

echo.
echo 0) (Return to Main Menu)
echo.                    

set /p tweaks=Type your choice then press Enter:
if %tweaks%==1 (goto :returnWindows10RC)
if %tweaks%==2 (goto :disableHibernation)
if %tweaks%==3 (goto :moreTweaks)
if %tweaks%==4 (goto :windowsActivation)
if %tweaks%==0 (goto :mainMenu) else (goto :wrongChoice1)

:returnWindows10RC
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
echo Press any key to return to the Tweaks Menu.
pause >nul
goto :tweaksMenu

:disableHibernation
Powercfg /hibernate off
echo Press any key to return to the Tweaks Menu.
pause >nul
goto :tweaksMenu

:moreTweaks
powershell start-process powershell -verb runas
powershell -command "iwr -useb https://christitus.com/win | iex"
echo Press any key to return to the Tweaks Menu.
pause >nul
goto :tweaksMenu

:windowsActivation
powershell start-process powershell -verb runas
powershell -command "iwr -useb https://massgrave.dev/get | iex"
echo Press any key to return to the Tweaks Menu.
pause >nul
goto :tweaksMenu
