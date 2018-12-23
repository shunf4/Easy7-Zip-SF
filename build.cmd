@echo off

set OPTS=CPU=AMD64 MY_STATIC_LINK=1 _SFX=1
set LFLAGS=/SUBSYSTEM:WINDOWS,"5.02"

set O=%~dp0out\FileManager
mkdir %O%
pushd %~dp0CPP\7zip\UI\FileManager
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7zFM.exe" >> %ERRFILE%
popd

set O=%~dp0out\GUI
mkdir %O%
pushd %~dp0CPP\7zip\UI\GUI
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7zG.exe" >> %ERRFILE%
popd

set O=%~dp0out\Explorer
mkdir %O%
pushd %~dp0CPP\7zip\UI\Explorer
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7-zip.dll" >> %ERRFILE%
popd

set O=%~dp0out\SFXWin
mkdir %O%
pushd %~dp0CPP\7zip\Bundles\SFXWin
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7z.sfx" >> %ERRFILE%
popd

set O=%~dp0out\7zipInstall
mkdir %O%
pushd %~dp0C\Util\7zipInstall
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ Install-x64.exe" >> %ERRFILE%
popd

set O=%~dp0out\7zipUninstall
mkdir %O%
pushd %~dp0C\Util\7zipUninstall
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ Uninstall.exe" >> %ERRFILE%
popd

set LFLAGS=/SUBSYSTEM:CONSOLE,"5.02"

set O=%~dp0out\Console
mkdir %O%
pushd %~dp0CPP\7zip\UI\Console
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7z.exe" >> %ERRFILE%
popd


set O=%~dp0out\SFXCon
mkdir %O%
pushd %~dp0CPP\7zip\Bundles\SFXCon
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7zCon.sfx" >> %ERRFILE%
popd

set O=%~dp0out\Alone
mkdir %O%
pushd %~dp0CPP\7zip\Bundles\Alone
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7za.exe" >> %ERRFILE%
popd

set O=%~dp0out\Format7z
mkdir %O%
pushd %~dp0CPP\7zip\Bundles\Format7z
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7za.dll" >> %ERRFILE%
popd

set O=%~dp0out\Format7zF
mkdir %O%
pushd %~dp0CPP\7zip\Bundles\Format7zF
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7z.dll" >> %ERRFILE%
popd

set O=%~dp0out\Format7zExtract
mkdir %O%
pushd %~dp0CPP\7zip\Bundles\Format7zExtract
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7zxa.dll" >> %ERRFILE%
popd

explorer.exe %~dp0out