@echo off
setlocal
IF "%*"=="" (set I=-i) ELSE (set I=)
set "BATCH_DIR=%~dp0"
set "CWD=%BATCH_DIR:~0,-1%"
set "CWD_LUA=%CWD:\=\\%"
set "APPDATA_LUA=%APPDATA:\=\\%"

set "VERSION_FULL=%~1"
for /F "tokens=1,2 delims=." %%a in ("%FULL_VER%") do (
    set "MAJOR=%%a"
    set "MINOR=%%b"
)
set "VERSION=%MAJOR%.%MINOR%"

rem "%CWD%/externals/lua-%VERSION_FULL%\bin\lua.exe" -e "package.path=\"%CWD_LUA%\\lua_modules\\share\\lua\\%VERSION%\\?.lua;%CWD_LUA%\\lua_modules\\share\\lua\\%VERSION%\\?\\init.lua;%APPDATA_LUA%\\luarocks\\share\\lua\\%VERSION%\\?.lua;%APPDATA_LUA%\\luarocks\\share\\lua\\%VERSION%\\?\\init.lua;\"..package.path;package.cpath=\"%CWD_LUA%\\lua_modules\\lib\\lua\\%VERSION%\\?.dll;%APPDATA_LUA%\\luarocks\\lib\\lua\\%VERSION%\\?.dll;\"..package.cpath" %I% %*
"%CWD%/externals/lua-%VERSION_FULL%\bin\lua.exe" -e "package.path=\"%CWD_LUA%\\lua_modules\\share\\lua\\%VERSION%\\?.lua;%CWD_LUA%\\lua_modules\\share\\lua\\%VERSION%\\?\\init.lua;\"..package.path;package.cpath=\"%CWD_LUA%\\lua_modules\\lib\\lua\\%VERSION%\\?.dll;\"..package.cpath" %I% %*
exit /b %ERRORLEVEL%
