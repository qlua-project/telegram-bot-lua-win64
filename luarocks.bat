@echo off
setlocal

set "LUAROCKS_SYSCONFDIR=C:\Program Files\luarocks"
rem set "LUAROCKS_SYSCONFDIR=%~dp0.luarocks"
rem set "OPENSSL_DIR=%~dp0externals\openssl"

call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64 > NUL

"%~dp0externals\luarocks.exe" --project-tree %~dp0lua_modules "OPENSSL_DIR=%CD%\externals\openssl" %*
exit /b %ERRORLEVEL%
