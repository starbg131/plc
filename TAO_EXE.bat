@echo off
chcp 65001 >nul
where py >nul 2>nul
if errorlevel 1 (echo Cai Python 3 va chon Add Python to PATH. & pause & exit /b 1)
py -m pip install pyinstaller
if errorlevel 1 (pause & exit /b 1)
py -m PyInstaller --noconfirm --clean --onefile --windowed --name CamNangPLC --add-data "cam_nang_plc_mitsubishi_fx.html;." launcher.py
if errorlevel 1 (pause & exit /b 1)
echo EXE da tao tai dist\CamNangPLC.exe
pause
