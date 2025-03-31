@pushd %~dp0bot-connect
rem @call "%~dp0..\lua54" lua\lua-features.lua %*
@call "lua54" run.lua %*
@popd