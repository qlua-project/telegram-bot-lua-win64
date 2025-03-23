@echo off
setlocal
set "BATCH_DIR=%~dp0"
set "CWD=%BATCH_DIR:~0,-1%"

set "LUAROCKS_SYSCONFDIR=C:\Program Files\luarocks"
rem set "LUAROCKS_SYSCONFDIR=%CWD%\.luarocks"

"%~dp0externals\luarocks.exe" --project-tree %~dp0lua_modules %*
exit /b %ERRORLEVEL%
