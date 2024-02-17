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
call :read_ip_address

if "%ip_address%"=="" (
    echo Invalid IP address.
    exit /b 1
)

ping -n 4 %ip_address%
call app.bat
exit /b

:read_ip_address
set /p ip_address="Enter an IP address: "
exit /b