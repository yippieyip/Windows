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

echo Uninstalling PowerAutomate Desktop...
winget uninstall Microsoft.PowerAutomateDesktop_8wekyb3d8bbwe

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
echo 1) (Runtimes)          ------------------
echo                        DirectX
echo                        Visual C++
echo                        Dot Net Framework
echo                        ------------------
echo.

echo.
echo 2) (Utilities)         ------------------
echo                        EarTrumpet
echo                        VeraCrypt
echo                        Cryptomator
echo                        7Zip
echo                        Search Everything
echo                        Notepad++
echo                        IrfanView
echo                        CopyQ
echo                        BleachBit
echo                        BulkCrapUninstaller
echo                        AutoHotkey
echo                        WizTree
echo                        Visual Studio Code
echo                        OBS Studio
echo                        BalenaEtcher
echo                        qBittorrent
echo                        VLC Media Player
echo                        Parsec
echo                        Bitwarden
echo                        Github Desktop
echo                        File Converter
echo                        ------------------
echo.

echo.
echo 3) (Internet)          ------------------
echo                        LibreWolf.LibreWolf
echo                        Thunderbird
echo                        NordVPN
echo                        Tor Browser
echo                        ------------------
echo.

echo.
echo 4) (Social)            ------------------
echo                        Telegram Desktop
echo                        Wechat Desktop
echo                        Whatsapp Desktop
echo                        Discord
echo                        ------------------
echo.

echo.
echo 5) (Office)            ------------------
echo                        Dropbox
echo                        Office 365 Enterprise
echo                        OnlyOffice
echo                        Obsidian
echo                        Sumatra PDF
echo                        Gimp
echo                        Inkscape
echo                        Zoom
echo                        ------------------
echo.

echo.
echo 6) (Games)             ------------------
echo                        Steam
echo                        Epic Games Launcher
echo                        Osu!
echo                        ------------------
echo.

echo.
echo 7) (Clean Setup)
echo.

echo.
echo 8) (Complete Setup)
echo.

echo.
echo 0) Return to Main Menu
echo.

set /p choice=Type your choice then press Enter:
if %choice%==1 (goto :batch3)
if %choice%==2 (goto :batch4)
if %choice%==3 (goto :batch5)
if %choice%==4 (goto :batch6)
if %choice%==5 (goto :batch7)
if %choice%==6 (goto :batch8)
if %choice%==7 (goto :batch9)
if %choice%==8 (goto :batch10)
if %choice%==0 (goto :mainMenu) else (goto :wrongChoice1)

:batch3
call:install Microsoft.DirectX
call:install Microsoft.VC++2015-2022Redist-x64
call:install Microsoft.dotNetFramework
echo Press any key to return to the Install Menu.
pause >nul
goto :installMenu

:batch4
call:install File-New-Project.EarTrumpet
call:install IDRIX.VeraCrypt
call:install Cryptomator.Cryptomator
call:install 7zip.7zip
call:install voidtools.Everything
call:install Notepad++.Notepad++
call:install IrfanSkiljan.IrfanView
call:install hluk.CopyQ
call:install BleachBit.BleachBit
call:install Klocman.BulkCrapUninstaller
call:install Lexikos.AutoHotkey
call:install AntibodySoftware.WizTree
call:install Microsoft.VisualStudioCode
call:install OBSProject.OBSStudio
call:install Balena.Etcher
call:install qBittorrent.qBittorrent
call:install VideoLAN.VLC
call:install Parsec.Parsec
call:install Bitwarden.Bitwarden
call:install GitHub.GitHubDesktop.Beta
call:install AdrienAllard.FileConverter
echo Press any key to return to the Install Menu.
pause >nul
goto :installMenu

:batch5
call:install LibreWolf.LibreWolf
call:install Mozilla.Thunderbird.Beta
call:install NordVPN.NordVPN
call:install TorProject.TorBrowser
echo Press any key to return to the Install Menu.
pause >nul
goto :installMenu

:batch6
call:install Telegram.TelegramDesktop.Beta
call:install Tencent.WeChat
call:install 9NKSQGP7F2NH :: Whatsapp
call:install Discord.Discord
echo Press any key to return to the Install Menu.
pause >nul
goto :installMenu

:batch7
call:install Dropbox.Dropbox
call:install Microsoft.Office
call:install ONLYOFFICE.DesktopEditors
call:install Obsidian.Obsidian
call:install SumatraPDF.SumatraPDF
call:install GIMP.GIMP
call:install Inkscape.Inkscape
call:install Zoom.Zoom
echo Press any key to return to the Install Menu.
pause >nul
goto :installMenu

:batch8
call:install Valve.Steam
call:install EpicGames.EpicGamesLauncher
call:install Peppy.Osu!
echo Press any key to return to the Install Menu.
pause >nul
goto :installMenu

:batch9
call:install Microsoft.DirectX
call:install Microsoft.VC++2015-2022Redist-x64
call:install Microsoft.dotNetFramework
call:install File-New-Project.EarTrumpet
call:install 7zip.7zip
call:install voidtools.Everything
call:install Notepad++.Notepad++
call:install IrfanSkiljan.IrfanView
call:install hluk.CopyQ
call:install BleachBit.BleachBit
call:install Klocman.BulkCrapUninstaller
call:install Lexikos.AutoHotkey
call:install AntibodySoftware.WizTree
call:install Microsoft.VisualStudioCode
call:install OBSProject.OBSStudio
call:install qBittorrent.qBittorrent
call:install VideoLAN.VLC
call:install LibreWolf.LibreWolf
call:install NordVPN.NordVPN
call:install TorProject.TorBrowser
call:install Parsec.Parsec
call:install AdrienAllard.FileConverter

echo Press any key to return to the Install Menu.
pause >nul
goto :installMenu

:batch10
call:install Microsoft.DirectX
call:install Microsoft.VC++2015-2022Redist-x64
call:install Microsoft.dotNetFramework
call:install File-New-Project.EarTrumpet
call:install IDRIX.VeraCrypt
call:install Cryptomator.Cryptomator
call:install 7zip.7zip
call:install voidtools.Everything
call:install Notepad++.Notepad++
call:install IrfanSkiljan.IrfanView
call:install hluk.CopyQ
call:install BleachBit.BleachBit
call:install Klocman.BulkCrapUninstaller
call:install Lexikos.AutoHotkey
call:install AntibodySoftware.WizTree
call:install Microsoft.VisualStudioCode
call:install OBSProject.OBSStudio
call:install Balena.Etcher
call:install qBittorrent.qBittorrent
call:install VideoLAN.VLC
call:install Parsec.Parsec
call:install Bitwarden.Bitwarden
call:install GitHub.GitHubDesktop.Beta
call:install AdrienAllard.FileConverter
call:install LibreWolf.LibreWolf
call:install Mozilla.Thunderbird.Beta
call:install NordVPN.NordVPN
call:install TorProject.TorBrowser
call:install Telegram.TelegramDesktop.Beta
call:install Tencent.WeChat
call:install 9NKSQGP7F2NH :: Whatsapp
call:install Discord.Discord
call:install Dropbox.Dropbox
call:install Microsoft.Office
call:install ONLYOFFICE.DesktopEditors
call:install Obsidian.Obsidian
call:install SumatraPDF.SumatraPDF
call:install GIMP.GIMP
call:install Inkscape.Inkscape
call:install Zoom.Zoom
call:install Valve.Steam
call:install EpicGames.EpicGamesLauncher
call:install Peppy.Osu!
echo Press any key to return to the Install Menu.
pause >nul
goto :installMenu

:install
winget install --exact --id %~1 --silent --accept-package-agreements --accept-source-agreements