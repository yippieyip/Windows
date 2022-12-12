call:install Microsoft.DotNet.Framework.DeveloperPack_4
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
call:install Nlitesoft.NTLite
call:install Microsoft.PowerToys
call:install VMware.WorkstationPro
call:install Bitwarden.Bitwarden
call:install BleachBit.BleachBit
call:install Klocman.BulkCrapUninstaller
call:install Cryptomator.Cryptomator
call:install GitHub.GitHubDesktop.Beta
call:install Notepad++.Notepad++
call:install qBittorrent.qBittorrent
call:install SumatraPDF.SumatraPDF
call:install IDRIX.VeraCrypt
call:install VideoLAN.VLC
call:install AntibodySoftware.WizTree
call:install XnSoft.XnViewMP
call:install Brave.Brave
call:install LibreWolf.LibreWolf
call:install NordVPN.NordVPN
call:install Mozilla.Thunderbird.Beta -v "107.0b1"
call:install TorProject.TorBrowser
call:install Discord.Discord
call:install OpenWhisperSystems.Signal.Beta
call:install Telegram.TelegramDesktop.Beta
call:install Tencent.WeChat
call:install 9NBDXK71NK08
call:install Dropbox.Dropbox
call:install ogdesign.Eagle
call:install GIMP.GIMP
call:install Inkscape.Inkscape
call:install Microsoft.Office
call:install Obsidian.Obsidian
call:install OBSProject.OBSStudio.Pre-release
call:install Microsoft.VisualStudioCode
call:install Zoom.Zoom
call:install EpicGames.EpicGamesLauncher
call:install Valve.Steam
call:install Stremio.Stremio
call:install Voicemod.Voicemod 

pause

:install
winget install --exact --id %~1 --silent --accept-package-agreements --accept-source-agreements