@echo off
set OPTS=Z7_SFX=1 PLATFORM=x64
set LFLAGS=/DEBUG /SUBSYSTEM:WINDOWS,"5.02"

@echo   ^_^_^_^_^_ ^_ ^_      ^_^_  ^_^_
@echo  ^|  ^_^_^_(^_) ^| ^_^_^_^|  \^/  ^| ^_^_ ^_ ^_ ^_^_   ^_^_ ^_  ^_^_ ^_  ^_^_^_ ^_ ^_^_
@echo  ^| ^|^_  ^| ^| ^|^/ ^_ \ ^|\^/^| ^|^/ ^_^` ^| '^_ \ ^/ ^_^` ^|^/ ^_^` ^|^/ ^_ \ '^_^_^|
@echo  ^|  ^_^| ^| ^| ^|  ^_^_^/ ^|  ^| ^| (^_^| ^| ^| ^| ^| (^_^| ^| (^_^| ^|  ^_^_^/ ^|
@echo  ^|^_^|   ^|^_^|^_^|\^_^_^_^|^_^|  ^|^_^|\^_^_,^_^|^_^| ^|^_^|\^_^_,^_^|\^_^_, ^|\^_^_^_^|^_^|
@echo                                           ^|^_^_^_^/
@echo

set O=%~dp0out\FileManager
mkdir %O%
pushd %~dp0CPP\7zip\UI\FileManager
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7zFM.exe" >> errorfile.txt
popd

@echo  ^_^_^_^_^_     ^_^_^_^_ ^_   ^_ ^_^_^_
@echo ^|^_^_^_  ^|^_^_^_^/ ^_^_^_^| ^| ^| ^|^_ ^_^|
@echo    ^/ ^/^_  ^/ ^|  ^_^| ^| ^| ^|^| ^|
@echo   ^/ ^/ ^/ ^/^| ^|^_^| ^| ^|^_^| ^|^| ^|
@echo  ^/^_^/ ^/^_^_^_^|\^_^_^_^_^|\^_^_^_^/^|^_^_^_^|

set O=%~dp0out\GUI
mkdir %O%
pushd %~dp0CPP\7zip\UI\GUI
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7zG.exe" >> errorfile.txt
popd

@echo  ^_^_^_^_^_    ^_^_^_^_^_            ^_
@echo ^|^_^_^_  ^|^_^_^| ^_^_^_^_^|^_  ^_^_^_ ^_^_ ^| ^| ^_^_^_  ^_ ^_^_ ^_^_^_ ^_ ^_^_
@echo    ^/ ^/^_  ^/  ^_^| \ \^/ ^/ '^_ \^| ^|^/ ^_ \^| '^_^_^/ ^_ \ '^_^_^|
@echo   ^/ ^/ ^/ ^/^| ^|^_^_^_ ^>  ^<^| ^|^_) ^| ^| (^_) ^| ^| ^|  ^_^_^/ ^|
@echo  ^/^_^/ ^/^_^_^_^|^_^_^_^_^_^/^_^/\^_\ .^_^_^/^|^_^|\^_^_^_^/^|^_^|  \^_^_^_^|^_^|
@echo                     ^|^_^|

set O=%~dp0out\Explorer
mkdir %O%
pushd %~dp0CPP\7zip\UI\Explorer
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7-zip.dll" >> errorfile.txt
popd

@echo  ^_^_^_^_   ^_^_     ^_^_        ^_^_^_
@echo ^/ ^_^_^_^| ^/ ^_^|^_  ^_\ \      ^/ (^_)^_ ^_^_
@echo \^_^_^_ \^| ^|^_\ \^/ ^/\ \ ^/\ ^/ ^/^| ^| '^_ \
@echo  ^_^_^_) ^|  ^_^|^>  ^<  \ V  V ^/ ^| ^| ^| ^| ^|
@echo ^|^_^_^_^_^/^|^_^| ^/^_^/\^_\  \^_^/\^_^/  ^|^_^|^_^| ^|^_^|


set O=%~dp0out\SFXWin
mkdir %O%
pushd %~dp0CPP\7zip\Bundles\SFXWin
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7z.sfx" >> errorfile.txt
popd

@echo  ^_^_^_^_^_    ^_      ^_^_^_           ^_        ^_ ^_
@echo ^|^_^_^_  ^|^_^_(^_)^_ ^_^_^|^_ ^_^|^_ ^_^_  ^_^_^_^| ^|^_ ^_^_ ^_^| ^| ^|
@echo    ^/ ^/^_  ^/ ^| '^_ \^| ^|^| '^_ \^/ ^_^_^| ^_^_^/ ^_^` ^| ^| ^|
@echo   ^/ ^/ ^/ ^/^| ^| ^|^_) ^| ^|^| ^| ^| \^_^_ \ ^|^| (^_^| ^| ^| ^|
@echo  ^/^_^/ ^/^_^_^_^|^_^| .^_^_^/^_^_^_^|^_^| ^|^_^|^_^_^_^/\^_^_\^_^_,^_^|^_^|^_^|
@echo            ^|^_^|

set O=%~dp0out\7zipInstall
mkdir %O%
pushd %~dp0C\Util\7zipInstall
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ Install-x64.exe" >> errorfile.txt
popd

@echo  ^_^_^_^_^_    ^_       ^_   ^_       ^_^_^_           ^_        ^_ ^_
@echo ^|^_^_^_  ^|^_^_(^_)^_ ^_^_ ^| ^| ^| ^|^_ ^_^_ ^|^_ ^_^|^_ ^_^_  ^_^_^_^| ^|^_ ^_^_ ^_^| ^| ^|
@echo    ^/ ^/^_  ^/ ^| '^_ \^| ^| ^| ^| '^_ \ ^| ^|^| '^_ \^/ ^_^_^| ^_^_^/ ^_^` ^| ^| ^|
@echo   ^/ ^/ ^/ ^/^| ^| ^|^_) ^| ^|^_^| ^| ^| ^| ^|^| ^|^| ^| ^| \^_^_ \ ^|^| (^_^| ^| ^| ^|
@echo  ^/^_^/ ^/^_^_^_^|^_^| .^_^_^/ \^_^_^_^/^|^_^| ^|^_^|^_^_^_^|^_^| ^|^_^|^_^_^_^/\^_^_\^_^_,^_^|^_^|^_^|
@echo            ^|^_^|

set O=%~dp0out\7zipUninstall
mkdir %O%
pushd %~dp0C\Util\7zipUninstall
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ Uninstall.exe" >> errorfile.txt
popd

set LFLAGS=/SUBSYSTEM:CONSOLE,"5.02"

@echo  ^_^_^_^_^_     ^_^_^_^_                      ^_
@echo ^|^_^_^_  ^|^_^_^_^/ ^_^_^_^|^_^_^_  ^_ ^_^_  ^_^_^_  ^_^_^_ ^| ^| ^_^_^_
@echo    ^/ ^/^_  ^/ ^|   ^/ ^_ \^| '^_ \^/ ^_^_^|^/ ^_ \^| ^|^/ ^_ \
@echo   ^/ ^/ ^/ ^/^| ^|^_^_^| (^_) ^| ^| ^| \^_^_ \ (^_) ^| ^|  ^_^_^/
@echo  ^/^_^/ ^/^_^_^_^|\^_^_^_^_\^_^_^_^/^|^_^| ^|^_^|^_^_^_^/\^_^_^_^/^|^_^|\^_^_^_^|

set O=%~dp0out\Console
mkdir %O%
pushd %~dp0CPP\7zip\UI\Console
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7z.exe" >> errorfile.txt
popd

@echo       ^_^_                               ^_
@echo  ^_^_^_ ^/ ^_^|^_  ^_^_^_^_^_ ^_^_^_  ^_ ^_^_  ^_^_^_  ^_^_^_ ^| ^| ^_^_^_
@echo ^/ ^_^_^| ^|^_\ \^/ ^/ ^_^_^/ ^_ \^| '^_ \^/ ^_^_^|^/ ^_ \^| ^|^/ ^_ \
@echo \^_^_ \  ^_^|^>  ^< (^_^| (^_) ^| ^| ^| \^_^_ \ (^_) ^| ^|  ^_^_^/
@echo ^|^_^_^_^/^_^| ^/^_^/\^_\^_^_^_\^_^_^_^/^|^_^| ^|^_^|^_^_^_^/\^_^_^_^/^|^_^|\^_^_^_^|

set O=%~dp0out\SFXCon
mkdir %O%
pushd %~dp0CPP\7zip\Bundles\SFXCon
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7zCon.sfx" >> errorfile.txt
popd

@echo   ^_^_                            ^_  ^_^_^_^_^_
@echo  ^/ ^_^| ^_^_^_  ^_ ^_^_ ^_ ^_^_ ^_^_^_   ^_^_ ^_^| ^|^|^_^_^_  ^|^_^_^_
@echo ^| ^|^_ ^/ ^_ \^| '^_^_^| '^_ ^` ^_ \ ^/ ^_^` ^| ^_^_^| ^/ ^/^_  ^/
@echo ^|  ^_^| (^_) ^| ^|  ^| ^| ^| ^| ^| ^| (^_^| ^| ^|^_ ^/ ^/ ^/ ^/
@echo ^|^_^|  \^_^_^_^/^|^_^|  ^|^_^| ^|^_^| ^|^_^|\^_^_,^_^|\^_^_^/^_^/ ^/^_^_^_^|

set O=%~dp0out\Format7zF
mkdir %O%
pushd %~dp0CPP\7zip\Bundles\Format7zF
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x64 @ 7z.dll" >> errorfile.txt
popd

powershell -Command Copy-Item .\out\*\*.exe,.\out\*\*.dll,.\out\*\*.pdb,.\out\*\*.sfx -Destination .\out\ -Verbose -Force
explorer.exe %~dp0out