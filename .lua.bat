@echo off
setlocal
IF "%*"=="" (set I=-i) ELSE (set I=)
set "BATCH_DIR=%~dp0"
set "CWD=%BATCH_DIR:~0,-1%"
set "CWD_LUA=%CWD:\=\\%"
set "APPDATA_LUA=%APPDATA:\=\\%"

set "VERSION_FULL=%~1"
set "VERSION=%VERSION_FULL:~0,-2%"
set "REST=%*" & call set "REST=%%REST:*%1=%%"


rem "%CWD%/externals/lua-%VERSION_FULL%\bin\lua.exe" -e "package.path=\"%CWD_LUA%\\lua_modules\\share\\lua\\%VERSION%\\?.lua;%CWD_LUA%\\lua_modules\\share\\lua\\%VERSION%\\?\\init.lua;%APPDATA_LUA%\\luarocks\\share\\lua\\%VERSION%\\?.lua;%APPDATA_LUA%\\luarocks\\share\\lua\\%VERSION%\\?\\init.lua;\"..package.path;package.cpath=\"%CWD_LUA%\\lua_modules\\lib\\lua\\%VERSION%\\?.dll;%APPDATA_LUA%\\luarocks\\lib\\lua\\%VERSION%\\?.dll;\"..package.cpath" %I% %*
"%CWD%/externals/lua-%VERSION_FULL%\bin\lua.exe" -e "package.path=\"%CWD_LUA%\\lua_modules\\share\\lua\\%VERSION%\\?.lua;%CWD_LUA%\\lua_modules\\share\\lua\\%VERSION%\\?\\init.lua;\"..package.path;package.cpath=\"%CWD_LUA%\\lua_modules\\lib\\lua\\%VERSION%\\?.dll;\"..package.cpath" %I% %REST%
exit /b %ERRORLEVEL%
