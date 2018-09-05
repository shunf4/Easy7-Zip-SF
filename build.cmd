set NEW_COMPILER=1
set NEW_FOLDER_INTERFACE=1
set MY_STATIC_BUILD=0
set CPU=AMD64
set O=%~dp0out

rem old build
rd /y /q %~dp0out

rem 7-zip.dll
pushd CPP\7zip\UI\Explorer
nmake /I /A
popd

rem 7zFM.exe
pushd CPP\7zip\UI\FileManager
nmake /I /A
popd

rem 7zG.exe
pushd CPP\7zip\UI\GUI
nmake /I /A
popd

rem 7z.exe
pushd CPP\7zip\UI\Console
nmake /I /A
popd

explorer.exe %~dp0out