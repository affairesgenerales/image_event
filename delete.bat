@echo off
setlocal

cd /d C:\image_event

echo =========================
echo SUPPRESSION IMAGE EVENT
echo =========================

:: force la suppression côté Git (IMPORTANT)
git rm ./images/event.png

:: stage tout proprement (sécurise le commit)
git add -A

:: commit même si Git est un peu confus
git commit -m "Delete event image"

:: push vers GitHub
git push

echo =========================
echo TERMINE
echo =========================
pause