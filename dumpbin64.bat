@echo off
setlocal

call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat" > NUL
set DUMPBIN_DIR=nmake-dump-release-x64

pushd %~dp0

mkdir %DUMPBIN_DIR%

    dumpbin /headers lua_modules\lib\lua\5.4\ssl.dll > %DUMPBIN_DIR%\ssl.dll.headers.txt
    dumpbin /exports lua_modules\lib\lua\5.4\ssl.dll > %DUMPBIN_DIR%\ssl.dll.exports.txt
    dumpbin /dependents lua_modules\lib\lua\5.4\ssl.dll > %DUMPBIN_DIR%\ssl.dll.dependents.txt
    dumpbin /imports lua_modules\lib\lua\5.4\ssl.dll > %DUMPBIN_DIR%\ssl.dll.imports.txt

    dumpbin /headers lua_modules\lib\lua\5.4\lpeg.dll > %DUMPBIN_DIR%\lpeg.dll.headers.txt
    dumpbin /exports lua_modules\lib\lua\5.4\lpeg.dll > %DUMPBIN_DIR%\lpeg.dll.exports.txt
    dumpbin /dependents lua_modules\lib\lua\5.4\lpeg.dll > %DUMPBIN_DIR%\lpeg.dll.dependents.txt
    dumpbin /imports lua_modules\lib\lua\5.4\lpeg.dll > %DUMPBIN_DIR%\lpeg.dll.imports.txt

    dumpbin /headers lua_modules\lib\lua\5.4\lua-utf8.dll > %DUMPBIN_DIR%\lua-utf8.dll.headers.txt
    dumpbin /exports lua_modules\lib\lua\5.4\lua-utf8.dll > %DUMPBIN_DIR%\lua-utf8.dll.exports.txt
    dumpbin /dependents lua_modules\lib\lua\5.4\lua-utf8.dll > %DUMPBIN_DIR%\lua-utf8.dll.dependents.txt
    dumpbin /imports lua_modules\lib\lua\5.4\lua-utf8.dll > %DUMPBIN_DIR%\lua-utf8.dll.imports.txt

    dumpbin /headers lua_modules\lib\lua\5.4\mime\core.dll > %DUMPBIN_DIR%\mime.core.dll.headers.txt
    dumpbin /exports lua_modules\lib\lua\5.4\mime\core.dll > %DUMPBIN_DIR%\mime.core.dll.exports.txt
    dumpbin /dependents lua_modules\lib\lua\5.4\mime\core.dll > %DUMPBIN_DIR%\mime.core.dll.dependents.txt
    dumpbin /imports lua_modules\lib\lua\5.4\mime\core.dll > %DUMPBIN_DIR%\mime.core.dll.imports.txt

    dumpbin /headers lua_modules\lib\lua\5.4\socket\core.dll > %DUMPBIN_DIR%\socket.core.dll.headers.txt
    dumpbin /exports lua_modules\lib\lua\5.4\socket\core.dll > %DUMPBIN_DIR%\socket.core.dll.exports.txt
    dumpbin /dependents lua_modules\lib\lua\5.4\socket\core.dll > %DUMPBIN_DIR%\socket.core.dll.dependents.txt
    dumpbin /imports lua_modules\lib\lua\5.4\socket\core.dll > %DUMPBIN_DIR%\socket.core.dll.imports.txt

popd

endlocal
