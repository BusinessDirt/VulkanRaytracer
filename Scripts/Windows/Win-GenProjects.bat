@echo off

pushd %~dp0\..\..\
vendor\premake\bin\premake5.exe --file=Build.lua vs2022
popd

if "%1"=="nopause" goto end
pause
:end