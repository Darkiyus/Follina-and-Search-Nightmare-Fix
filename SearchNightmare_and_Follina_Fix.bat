@echo off
chcp 65001
color 0C
cls
echo Darkiyus´s Search Nightmare and Follina fix! 
echo.  
echo Press 1 for the exploit fix
echo Press 2 for the recovery
echo Confirm with Enter!

set /p menu=Input:
echo.
if %menu%==1 (
reg export HKEY_CLASSES_ROOT\search-ms search-ms.reg /y
reg export HKEY_CLASSES_ROOT\ms-msdt msdt-ms.reg /y
echo.
echo Backup of Registy keys created 
echo.
echo.
reg delete HKEY_CLASSES_ROOT\search-ms /f
echo Search Nightmare fixed or not present
echo.
echo.
reg delete HKEY_CLASSES_ROOT\ms-msdt /f
echo Follina fixed or not present
)

if %menu%==2 (
echo Backup started...
echo.
reg import search-ms.reg
echo Search Nightmare restored
del /q search-ms.reg
echo.
echo.
reg import msdt-ms.reg
echo Follina restored
del /q msdt-ms.reg
)

timeout /T 20