@echo off
rem Creator : Kurama
rem Github : https://github.com/Kurama250

cls
echo " ------------------------------------------- "
echo "|    /\ /\_   _ _ __ __ _ _ __ ___   __ _   |"
echo "|   / //_/ | | | '__/ _` | '_ ` _ \ / _`|   |"
echo "|  / __ \| |_| | | | (_| | | | | | | (_| |  |"
echo "|  \/  \/ \__,_|_|  \__,_|_| |_| |_|\__,_|  |"
echo "|                                           |"
echo "|         Created by Kurama250              |"
echo "|   Github: https://github.com/Kurama250    |"
echo "|      Basic Tools for Check IP v1.1        |"
echo " ------------------------------------------- "
echo.

:search_whois
echo Enter an IP address:
set /p ip_address=

curl "https://ipapi.co/%ip_address%/json/" > result\whois.txt

echo WHOIS search result saved to 'result\whois.txt'.

:show_menu
cls
echo Menu:
echo 1. WHOIS search
echo 2. Open whois.txt
echo 3. Return Home Menu
echo 4. Leave
echo Enter your choice:
set /p choice=

if "%choice%"=="1" (
    call :search_whois
) else if "%choice%"=="2" (
    start notepad result\whois.txt
) else if "%choice%"=="3" (
    call app.bat
) else if "%choice%"=="4" (
    exit
) else (
    echo Invalid choice. Try Again.
)

call app.bat
pause > nul
