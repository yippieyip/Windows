::Runtimes
call:install Microsoft.DotNet.Framework.DeveloperPack_4
call:install Microsoft.DirectX
call:install Microsoft.VCRedist.2015+.x64

::Essentials
call:install Lexikos.AutoHotkey
call:install Bitwarden.Bitwarden
call:install BleachBit.BleachBit
call:install Klocman.BulkCrapUninstaller
call:install hluk.CopyQ
call:install Cryptomator.Cryptomator
call:install File-New-Project.EarTrumpet
call:install voidtools.Everything.Lite
call:install Greenshot.Greenshot
call:install M2Team.NanaZip
call:install Notepad++.Notepad++
call:install Microsoft.PowerToys
call:install SumatraPDF.SumatraPDF
call:install IDRIX.VeraCrypt
call:install VideoLAN.VLC
call:install AntibodySoftware.WizTree
call:install XnSoft.XnViewMP

::Internet
call:install Brave.Brave
call:install LibreWolf.LibreWolf
call:install NordVPN.NordVPN
call:install qBittorrent.qBittorrent
call:install Mozilla.Thunderbird
call:install TorProject.TorBrowser

::Socials
call:install Discord.Discord
call:install OpenWhisperSystems.Signal.Beta
call:install Telegram.TelegramDesktop.Beta
call:install Tencent.WeChat
call:install 9NBDXK71NK08 ::Whatsapp

::Work
call:install Dropbox.Dropbox
call:install ogdesign.Eagle
call:install GIMP.GIMP
call:install GitHub.GitHubDesktop.Beta
call:install Inkscape.Inkscape
call:install Microsoft.Office
call:install Obsidian.Obsidian
call:install OBSProject.OBSStudio
call:install Microsoft.VisualStudioCode
call:install Zoom.Zoom

::Entertainment
call:install EpicGames.EpicGamesLauncher
call:install Valve.Steam
call:install Stremio.Stremio

::Etc
call:install Nlitesoft.NTLite
call:install VMware.WorkstationPro
call:install Voicemod.Voicemod

echo Done!
pause >nul

:install
winget install --exact --id %~1 --silent --accept-package-agreements --accept-source-agreements
