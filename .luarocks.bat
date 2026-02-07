@echo off
setlocal

set "VERSION_FULL=%~1"
set "VERSION=%VERSION_FULL:~0,-2%"
set "REST=%*" & call set "REST=%%REST:*%1=%%"


:: https://github.com/luarocks/luarocks/issues/337#issuecomment-98697269
:: https_proxy=http://proxy.server:3128
call %~dp0.env.bat

call %~dp0.buildtools.bat
:: "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64 > NUL
:: "C:\Program Files (x86)\Microsoft Visual Studio\18\BuildTools\Common7\Tools\VsDevCmd.bat" -help
call "%BUILDTOOLS_DIR%\Common7\Tools\VsDevCmd.bat" -no_logo -startdir=none -host_arch=x64 -arch=x64 > NUL

::"%~dp0externals\luarocks.exe" --project-tree %~dp0lua_modules --lua-version "%VERSION%" --lua-dir "%~dp0externals\lua-%VERSION_FULL%" "OPENSSL_DIR=%CD%\externals\openssl" %*
"%~dp0externals\luarocks.exe" --project-tree %~dp0lua_modules --lua-dir "%~dp0externals\lua-%VERSION_FULL%" "OPENSSL_DIR=%CD%\externals\openssl" %REST%
exit /b %ERRORLEVEL%
