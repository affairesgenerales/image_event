@echo off
setlocal

echo =========================
echo  UPDATE IMAGE SIGNATURE
echo =========================

:: chemin du repo
set REPO=C:\image_event
set IMAGE_SOURCE=%REPO%\incoming\event.png
set IMAGE_TARGET=%REPO%\images\event.png
:: vérifie si image existe
if not exist "%IMAGE_SOURCE%" (
    echo ERREUR : image manquante dans incoming\
    pause
    exit /b
)

echo Image detectee : %IMAGE_SOURCE%

:: copie + remplace
copy /Y "%IMAGE_SOURCE%" "%IMAGE_TARGET%" >nul

:: git
cd /d %REPO%

git add images/event.png
git commit -m "Update signature image"
git push

echo =========================
echo  TERMINE
echo =========================
pause