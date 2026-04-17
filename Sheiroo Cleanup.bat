@echo off

taskkill /f /im explorer.exe >nul 2>&1
del /f /s /q "%localappdata%\Microsoft\Windows\Explorer\iconcache*" >nul 2>&1

rd /s /q "C:\Windows\Temp" >nul 2>&1
mkdir "C:\Windows\Temp" >nul 2>&1

rd /s /q "%Temp%" >nul 2>&1
mkdir "%Temp%" >nul 2>&1

rd /s /q "C:\Windows\Prefetch" >nul 2>&1
mkdir "C:\Windows\Prefetch" >nul 2>&1

rd /s /q "%LocalAppData%\Microsoft\Windows\WebCache" >nul 2>&1
mkdir "%LocalAppData%\Microsoft\Windows\WebCache" >nul 2>&1

del /f /q "C:\windows\history\*" >nul 2>&1
del /f /q "C:\windows\cookies\*" >nul 2>&1
del /f /q "C:\windows\recent\*" >nul 2>&1
del /f /q "C:\windows\spool\printers\*" >nul 2>&1
rmdir /S /Q "%AppData%\Local\Microsoft\Windows\INetCache" >nul 2>&1
rmdir /S /Q "%AppData%\Local\Microsoft\Windows\INetCookies" >nul 2>&1

rd "%SystemDrive%\$GetCurrent" /s /q >nul 2>&1
rd "%SystemDrive%\$SysReset" /s /q >nul 2>&1
rd "%SystemDrive%\$Windows.~BT" /s /q >nul 2>&1
rd "%SystemDrive%\$Windows.~WS" /s /q >nul 2>&1
rd "%SystemDrive%\$WinREAgent" /s /q >nul 2>&1
rd "%SystemDrive%\OneDriveTemp" /s /q >nul 2>&1
rd /s /q "C:\Windows\Logs" >nul 2>&1
rd /s /q "C:\Windows\System32\SleepStudy" >nul 2>&1
del "%WINDIR%\Installer\$PatchCache$" /s /f /q >nul 2>&1
del /s /q "%ProgramData%\USOPrivate\UpdateStore" >nul 2>&1
del /s /q "%ProgramData%\USOShared\Logs" >nul 2>&1

rd /s /q "%AppData%\Discord\Cache" >nul 2>&1
mkdir "%AppData%\Discord\Cache" >nul 2>&1
rd /s /q "%AppData%\Discord\Code Cache" >nul 2>&1
mkdir "%AppData%\Discord\Code Cache" >nul 2>&1

rd /s /q "%LocalAppData%\Spotify\Data" >nul 2>&1
mkdir "%LocalAppData%\Spotify\Data" >nul 2>&1

ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1
arp -d * >nul 2>&1
nbtstat -R >nul 2>&1
nbtstat -RR >nul 2>&1
ipconfig /flushdns >nul 2>&1
ipconfig /registerdns >nul 2>&1

rd /s /q %systemdrive%\$Recycle.bin >nul 2>&1

rd /s /q "%ProgramData%\Microsoft\Windows\WER\ReportArchive" >nul 2>&1
rd /s /q "%ProgramData%\Microsoft\Windows\WER\ReportQueue" >nul 2>&1

powershell.exe -command "Get-WmiObject MSPower_DeviceEnable -Namespace root\wmi | ForEach-Object { $_.enable = $false; $_.psbase.put(); }" >nul 2>&1

start explorer.exe >nul 2>&1