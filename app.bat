@echo off
rem Creator : Kurama
rem Github : https://github.com/Kurama250

cls
echo "|-------------------------------------------|"
echo "|    /\ /\_   _ _ __ __ _ _ __ ___   __ _   |"
echo "|   / //_/ | | | '__/ _` | '_ ` _ \ / _`|   |"
echo "|  / __ \| |_| | | | (_| | | | | | | (_| |  |"
echo "|  \/  \/ \__,_|_|  \__,_|_| |_| |_|\__,_|  |"
echo "|                                           |"
echo "|         Created by Kurama250              |"
echo "|   Github: https://github.com/Kurama250    |"
echo "|        Tools for Check IP v1.0            |"
echo "|-------------------------------------------|"
echo.
echo - Menu:
echo - 1. Ping
echo - 2. Whois
echo - 3. Tracker
echo - 4. Leave
echo.
set /p choice=Choose an option [1-4]:

if "%choice%"=="1" (
    call menu\ping.bat
) else if "%choice%"=="2" (
    call menu\whois.bat
) else if "%choice%"=="3" (
    call menu\track.bat
) else if "%choice%"=="4" (
    exit
) else (
    echo Invalid choice. Please select a valid option.
)

pause
