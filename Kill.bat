:Garena
sc stop "GarenaPlatform"
Taskkill /IM GarenaMessenger.exe /T /F & ::  Garena
Taskkill /IM ggdllhost.exe /T /F & ::  Garena
Taskkill /IM LeagueClient.exe /T /F & ::  Garena
Taskkill /IM Garena.exe /T /F & ::  Garena
Taskkill /IM gxxcef.exe /T /F & ::  Garena
Taskkill /IM gxxsvc.exe /T /F & ::  Garena
sc config "GarenaPlatform" start= disabled


:Adobe
Taskkill /IM acrotray.exe /T /F 
Taskkill /IM AGMService.exe /T /F
Taskkill /IM AGSService.exe /T /F
Taskkill /IM CCLibrary.exe /T /F
Taskkill /IM CCXProcess.exe /T /F
Taskkill /IM CoreSync.exe /T /F
Taskkill /IM AdobePCBroker.exe /T /F


:VMWare
Taskkill /IM vmware-authd.exe /T /F
Taskkill /IM vmware-tray.exe /T /F 
Taskkill /IM vmware-usbarbitrator64.exe /T /F 


:WindowsBloat
Taskkill /IM Microsoft.Photos.exe /T /F
Taskkill /IM YourPhone.exe /T /F

:Office
Taskkill /IM OfficeClickToRun.exe /T /F


:ClearClipboard
echo off | clip

pause