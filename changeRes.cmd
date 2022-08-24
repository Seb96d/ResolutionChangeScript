@echo off
cd C:\Program Files (x86)\MarBit\Kulki
C:\nir\nircmd.exe setdisplay 800 600 32
start Kulki.exe
:loop
tasklist /nh /fi "imagename eq kulki.exe" | find /i "kulki.exe" >nul && (
goto loop
) || (
C:\nir\nircmd.exe setdisplay 1366 768 32
)
timeout /t 1