@echo off
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)
set /p site="Qual site deseja bloquear: "
echo 1.1.1.1 %site%>>C:\Windows\System32\drivers\etc\hosts