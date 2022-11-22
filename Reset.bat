@shift
@echo off
:loop
ipconfig /release
ipconfig /renew
ipconfig /flushdns
rd %temp% /s /q
md %temp%
del /s /f /q C:\Windows\Prefetch\*.*
del /s /f /q C:\Windows\temp\*.*
del /s /f /q C:\Windows\System32\temp\*.*
del /s /f /q C:\Users\%username%\AppData\Roaming\Tencent\*.*
del /s /f /q C:\ProgramData\Tencent\*.*
del /s /f /q C:\Users\%username%\AppData\Local\Temp\
del /s /f /q C:\Users\%username%\AppData\Local\Tencent\
del /s /f /q C:\Users\%username%\AppData\Roaming\Tencent\
netsh interface ip show config
ipconfig /all
ipconfig /registerdns
ipconfig /displaydns
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh int ip reset
netsh winsock reset
netsh interface ipv4 reset
netsh interface ipv6 reset
netsh advfirewall reset
nbtstat -r
nbtstat -rr
del /q/f/s %TEMP%
rd /s /q %windir%\temp & md %windir%\temp
del /q/f/s %TEMP%\*
cls
 timeout /t 700
 goto:loop
