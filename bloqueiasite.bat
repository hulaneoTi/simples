@echo off
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)
echo "digite REMOVER para remover o bloqueio"
set /p site="Qual site deseja bloquear: "
if "%site%"=="remover" (goto remove)
:add
echo 1.1.1.1 %site%>>C:\Windows\System32\drivers\etc\hosts
exit
:remove
type C:\Windows\System32\drivers\etc\hosts | findstr /v 1.1.1.1 > temp
type temp > C:\Windows\System32\drivers\etc\hosts
exit