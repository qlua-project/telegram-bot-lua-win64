@pushd %~dp0bot-connect
rem @call "%~dp0..\lua54" lua\lua-features.lua %*
rem @call "%~dp0..\lua54" lua\bot-connect.lua %*
@call "lua54" run.lua %*
@popd