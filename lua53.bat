@echo off
setlocal
IF "%*"=="" (set I=-i) ELSE (set I=)
set "BATCH_DIR=%~dp0"
set "CWD=%BATCH_DIR:~0,-1%"
set "CWD_LUA=%CWD:\=\\%"
set "APPDATA_LUA=%APPDATA:\=\\%"

set "LUAROCKS_SYSCONFDIR=C:\Program Files\luarocks"
rem set "LUAROCKS_SYSCONFDIR=%CWD%\.luarocks"

rem "externals/lua-5.3.5\bin\lua.exe" -e "package.path=\"%CWD_LUA%\\lua_modules\\share\\lua\\5.3\\?.lua;%CWD_LUA%\\lua_modules\\share\\lua\\5.3\\?\\init.lua;%APPDATA_LUA%\\luarocks\\share\\lua\\5.3\\?.lua;%APPDATA_LUA%\\luarocks\\share\\lua\\5.3\\?\\init.lua;\"..package.path;package.cpath=\"%CWD_LUA%\\lua_modules\\lib\\lua\\5.3\\?.dll;%APPDATA_LUA%\\luarocks\\lib\\lua\\5.3\\?.dll;\"..package.cpath" %I% %*
"externals/lua-5.3.5\bin\lua.exe" -e "package.path=\"%CWD_LUA%\\lua_modules\\share\\lua\\5.3\\?.lua;%CWD_LUA%\\lua_modules\\share\\lua\\5.3\\?\\init.lua;\"..package.path;package.cpath=\"%CWD_LUA%\\lua_modules\\lib\\lua\\5.3\\?.dll;\"..package.cpath" %I% %*
exit /b %ERRORLEVEL%
