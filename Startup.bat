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
echo 3) (Install)           ------------------
echo                           Quick install
echo                        ------------------
echo.

echo.
echo 0) (Quit)             ------------------
echo                              Quit
echo                       ------------------
echo.

set /p choice=Type your choice then press Enter:
if %choice%==1 (goto :debloater) 
if %choice%==2 (goto :tweaksMenu)
if %choice%==3 (goto :installMenu)
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
set /p edge="Do you want to uninstall edge? y/n: "
set /p enter="Press ENTER twice to start debloating"
set /p enter2="Press ENTER one more time to start debloating!"

echo Starting to debloat...
if /i "%EDGE%" == "y" (echo Killing Edge tasks and uninstalling Edge... (NOTE: IF ERRORS OCCUR, CLOSE THEM, if it's stuck on loading relaunch the script.) && taskkill /im msedge.exe && winget uninstall Microsoft.Edge)
if /i "%EDGE%" == "n" (echo Skipping Edge)
if /i "%EDGE%" == "" (echo Skipping Edge) else (echo Skipping Edge)

echo Uninstalling Cortana...
winget uninstall cortana

echo Uninstalling Xbox Bloat...
winget uninstall Microsoft.XboxApp_8wekyb3d8bbwe
winget uninstall Microsoft.Xbox.TCUI_8wekyb3d8bbwe
winget uninstall Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe
winget uninstall Microsoft.XboxIdentityProvider_8wekyb3d8bbwe
winget uninstall Microsoft.GamingApp_8wekyb3d8bbwe
:: winget uninstall Microsoft.XboxGamingOverlay_8wekyb3d8bbwe
:: winget uninstall Microsoft.XboxGamingOverlay_8wekyb3d8bbwe
:: winget uninstall Microsoft.XboxGameOverlay_8wekyb3d8bbwe

echo Uninstalling Groove-Music...
winget uninstall Microsoft.ZuneMusic_8wekyb3d8bbwe

echo Uninstalling FeedBack-Hub...
winget uninstall Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe

echo Uninstalling Microsoft-Tips...
winget uninstall Microsoft.Getstarted_8wekyb3d8bbwe

echo Uninstalling 3D-Viewer...
winget uninstall Microsoft.3DViewer_8wekyb3d8bbwe
winget uninstall Microsoft.Microsoft3DViewer_8wekyb3d8bbwe

echo Uninstalling Microsoft Solitaire Collection
winget uninstall Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe

echo Uninstalling Paint-3D...
winget uninstall Microsoft.MSPaint_8wekyb3d8bbwe

echo Uninstalling MSN-Weather also known as "Weather" App...
winget uninstall Microsoft.BingWeather_8wekyb3d8bbwe

echo Uninstalling Mail / Calendar...
winget uninstall microsoft.windowscommunicationsapps_8wekyb3d8bbwe

echo Uninstalling Your Phone...
winget uninstall Microsoft.YourPhone_8wekyb3d8bbwe

echo Uninstalling Microsoft Contacts...
winget uninstall Microsoft.People_8wekyb3d8bbwe

echo Uninstalling Microsoft.Pay/Wallet...
winget uninstall Microsoft.Wallet_8wekyb3d8bbwe

echo Uninstalling Microsoft Maps...
winget uninstall Microsoft.WindowsMaps_8wekyb3d8bbwe

echo Uninstalling OneNote...
winget uninstall Microsoft.Office.OneNote_8wekyb3d8bbwe

echo Uninstalling Office...
winget uninstall Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe

echo Uninstalling Voice Recorder...
winget uninstall Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe

echo Uninstalling Movies and TV...
winget uninstall Microsoft.ZuneVideo_8wekyb3d8bbwe

echo Uninstalling Mixed Reality-Portal...
winget uninstall Microsoft.MixedReality.Portal_8wekyb3d8bbwe

echo Uninstalling Sticky Notes...
winget uninstall Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe

echo Uninstalling Get Help...
winget uninstall Microsoft.GetHelp_8wekyb3d8bbwe

echo Uninstalling OneDrive...
winget uninstall Microsoft.OneDrive
winget uninstall Microsoft.OneDriveSync_8wekyb3d8bbwe

echo Uninstalling Skype...
winget uninstall skype

echo Uninstalling Teams...
winget uninstall MicrosoftTeams_8wekyb3d8bbwe
winget uninstall Microsoft.Teams

echo Uninstalling To Dos...
winget uninstall Microsoft.Todos_8wekyb3d8bbwe

echo Uninstalling Bing News...
winget uninstall Microsoft.BingNews_8wekyb3d8bbwe

echo Uninstalling Microsoft Bloat...
winget uninstall Clipchamp.Clipchamp_yxz26nhyzhsrt

echo.
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
echo 2) (Disable Shortcut Suffix)                 ------------------------------
echo                                              Disable Shortcut Suffix
echo                                              ------------------------------
echo.

echo.
echo 3) (Disable Hibernation)                     ------------------------------
echo                                              Disable Hibernation
echo                                              ------------------------------
echo.

echo.
echo 4) (More Tweaks by Chris Titus)              ------------------------------
echo                                              More Tweaks by Chris Titus
echo                                              ------------------------------
echo.

echo.
echo 5) (Windows Activation)                      ------------------------------
echo                                              Windows Activation
echo                                              ------------------------------
echo.

echo.
echo 0) (Return to Main Menu)
echo.                    

set /p tweaks=Type your choice then press Enter:
if %tweaks%==1 (goto :returnWindows10RC)
if %tweaks%==2 (goto :disableShortcutSuffix)
if %tweaks%==3 (goto :disableHibernation)
if %tweaks%==4 (goto :moreTweaks)
if %tweaks%==5 (goto :windowsActivation)
if %tweaks%==0 (goto :mainMenu) else (goto :wrongChoice1)

:returnWindows10RC
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
echo Press any key to return to the Tweaks Menu.
pause >nul
goto :tweaksMenu

:disableShortcutSuffix
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V link /T REG_Binary /D 00000000 /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates" /V ShortcutNameTemplate /F
taskkill /IM explorer.exe /F
start explorer.exe
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


:installMenu
cls
color B
echo.                
echo                ------------
echo                INSTALL MENU
echo                ------------
echo.

echo.
echo 1) (Clean Setup)       ------------------
echo                        .NetFramework
echo                        DirectX
echo                        Visual C++
echo                        ------------------
echo                        7Zip
echo                        AutoHotkey
echo                        AutoRuns
echo                        CopyQ
echo                        EarTrumpet
echo                        Everything
echo                        File Converter
echo                        Greenshot
echo                        PowerToys
echo                        ------------------
echo                        BleachBit
echo                        Bulk Crap Uninstaller
echo                        Notepad++
echo                        PowerToys
echo                        Rufus
echo                        Sumatra PDF
echo                        VLC Media Player
echo                        WizTree
echo                        XnViewMP
echo                        ------------------
echo                        Librewolf
echo                        ------------------
echo.

echo.
echo 2) (Complete Setup)    ------------------
echo                        .NetFramework
echo                        DirectX
echo                        Visual C++
echo                        ------------------
echo                        7Zip
echo                        AutoHotkey
echo                        AutoRuns
echo                        CopyQ
echo                        EarTrumpet
echo                        Everything
echo                        File Converter
echo                        Greenshot
echo                        PowerToys
echo                        ------------------
echo                        BitWarden
echo                        BleachBit
echo                        Bulk Crap Uninstaller
echo                        Cryptomator
echo                        Github Desktop
echo                        Notepad++
echo                        qBittorrent
echo                        Rufus
echo                        Sumatra PDF
echo                        VeraCrypt
echo                        VLC Media Player
echo                        WizTree
echo                        XnViewMP
echo                        ------------------
echo                        Brave
echo                        Librewolf
echo                        NordVPN
echo                        ThunderBird
echo                        TorBrowser
echo                        Vivaldi
echo                        ------------------
echo                        Discord
echo                        Telegram
echo                        WeChat
echo                        WhatsApp
echo                        ------------------
echo                        Dropbox
echo                        Gimp
echo                        Inkscape
echo                        Microsoft Office
echo                        Obsidian
echo                        OBS Studio
echo                        Visual Studio Code
echo                        Zoom
echo                        ------------------
echo                        Steam
echo                        Epic Games Launcher
echo                        ------------------
echo.

echo.
echo 0) Return to Main Menu
echo.

set /p choice=Type your choice then press Enter:
if %choice%==1 (goto :batch3)
if %choice%==2 (goto :batch4)
if %choice%==0 (goto :mainMenu) else (goto :wrongChoice1)

:batch3
call:install Microsoft.dotNetFramework
call:install Microsoft.DirectX
call:install Microsoft.VCRedist.2015+.x64
call:install 7zip.7zip
call:install Lexikos.AutoHotkey
call:install Microsoft.Sysinternals.Autoruns
call:install hluk.CopyQ
call:install File-New-Project.EarTrumpet
call:install voidtools.Everything.Lite
call:install AdrianAllard.FileConverter
call:install Greenshot.Greenshot
call:install Microsoft.PowerToys
call:install BleachBit.BleachBit
call:install Klocman.BulkCrapUninstaller
call:install Notepad++.Notepad++
call:install Rufus.Rufus
call:install SumatraPDF.SumatraPDF
call:install VideoLAN.VLC.Nightly
call:install AntibodySoftware.WizTree
call:install XnSoft.XnViewMP
call:install LibreWolf.LibreWolf

echo Press any key to return to the Install Menu.
pause >nul
goto :installMenu

:batch4
call:install Microsoft.dotNetFramework
call:install Microsoft.DirectX
call:install Microsoft.VCRedist.2015+.x64
call:install 7zip.7zip
call:install Lexikos.AutoHotkey
call:install Microsoft.Sysinternals.Autoruns
call:install hluk.CopyQ
call:install File-New-Project.EarTrumpet
call:install voidtools.Everything.Lite
call:install AdrianAllard.FileConverter
call:install Greenshot.Greenshot
call:install Microsoft.PowerToys
call:install Bitwarden.Bitwarden
call:install BleachBit.BleachBit
call:install Klocman.BulkCrapUninstaller
call:install Cryptomator.Cryptomator
call:install GitHub.GitHubDesktop.Beta
call:install Notepad++.Notepad++
call:install qBittorrent.qBittorrent
call:install Rufus.Rufus
call:install SumatraPDF.SumatraPDF
call:install IDRIX.VeraCrypt
call:install VideoLAN.VLC.Nightly
call:install AntibodySoftware.WizTree
call:install XnSoft.XnViewMP
call:install Brave.Brave
call:install LibreWolf.LibreWolf
call:install NordVPN.NordVPN
call:install Mozilla.Thunderbird.Beta
call:install TorProject.TorBrowser
call:install VivaldiTechnologies.Vivaldi
call:install Discord.Discord
call:install Telegram.TelegramDesktop.Beta
call:install Tencent.WeChat
call:install 9NBDXK71NK08
call:install Dropbox.Dropbox
call:install GIMP.GIMP
call:install Inkscape.Inkscape
call:install Microsoft.Office
call:install Obsidian.Obsidian
call:install OBSProject.OBSStudio.Pre-release
call:install Microsoft.VisualStudioCode
call:install Zoom.Zoom
call:install Valve.Steam
call:install EpicGames.EpicGamesLauncher


echo Press any key to return to the Install Menu.
pause >nul
goto :installMenu

:install
winget install --exact --id %~1 --silent --accept-package-agreements --accept-source-agreements