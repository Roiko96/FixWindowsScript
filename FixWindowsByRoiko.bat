@echo off
title Code by Roiko96
echo Running basic Windows 11 troubleshooting...

:: Step 1: Run System File Checker (SFC) to repair corrupted system files
echo Running System File Checker (SFC)...
sfc /scannow
echo.

:: Step 2: Run Deployment Imaging Service and Management Tool (DISM) to fix Windows image issues
echo Running DISM to restore the health of the Windows image...
DISM /Online /Cleanup-Image /RestoreHealth
echo.

:: Step 3: Clear the DNS cache
echo Clearing DNS cache...
ipconfig /flushdns
echo.

:: Step 4: Restart Windows Update services
echo Restarting Windows Update services...
net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver
net start wuauserv
net start cryptSvc
net start bits
net start msiserver
echo.

echo Basic troubleshooting completed. Code By Roiko
pause
