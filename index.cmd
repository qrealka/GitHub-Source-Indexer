@echo off
setlocal
set gitpath="D:\depot_tools\git.bat"
for /f "delims=" %%i in ('where.exe git.exe') do @set gitpath=%%i
echo git path: %gitpath%
@powershell.exe -ExecutionPolicy UNRESTRICTED "& '%~dpn0.ps1' -verifyLocalRepo -gitPath '%gitpath%'" %*