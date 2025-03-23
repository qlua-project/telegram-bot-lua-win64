@echo off
setlocal
set "BATCH_DIR=%~dp0"
set "CWD=%BATCH_DIR:~0,-1%"

set "LUAROCKS_SYSCONFDIR=C:\Program Files\luarocks"
rem set "LUAROCKS_SYSCONFDIR=%CWD%\.luarocks"
rem set "OPENSSL_DIR=%~dp0externals\openssl"

call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64 > NUL

"%~dp0externals\luarocks.exe" --project-tree %~dp0lua_modules "OPENSSL_DIR=%CD%\externals\openssl" %*
exit /b %ERRORLEVEL%
