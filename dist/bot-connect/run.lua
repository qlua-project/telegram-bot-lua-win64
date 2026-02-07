local inspect = require("inspect")

local getScriptPath1 = function()
    print(inspect(arg))
    local cwd = arg[0]:match("(.*[/\\])") or ".\\"
    print(cwd)
    return cwd
end

local getScriptPath2 = function()
    print(inspect(debug.getinfo(1, "S")))
    local cwd
    cwd = debug.getinfo(1, "S").source:sub(2):match("(.*[/\\])") or ".\\"
    print(cwd)
    -- cwd = debug.getinfo(1, "S").short_src:match("(.*[/\\])") or ".\\"
    -- print(cwd)
    return cwd
end

-- > dist\bot-connect\lua54.exe dist\bot-connect\run.lua
local script_dir
script_dir = getScriptPath1()
script_dir = getScriptPath2()
dofile(script_dir .. "test.lua")
-- dofile 'test'
--   [0] = "dist\\bot-connect\\run.lua"
--   short_src = "dist\\bot-connect\\test.lua",
--   source = "@dist\\bot-connect\\test.lua",
-- require 'test'
--   [0] = "dist\\bot-connect\\run.lua"
--   short_src = "...yground-telegram-bot-lua-win32\\dist\\bot-connect\\test.lua"
--   source = "@C:\\FX\\QLUA\\playground-telegram-bot-lua-win32\\dist\\bot-connect\\test.lua"
print(inspect(package.loaded, {depth=1}))
require('test')  -- like dofile
print(inspect(package.loaded, {depth=1}))
require('test')  -- skip

-- dofile(script_dir .. "lua/bot-connect.lua")
local bot_connect = require('bot-connect')
print(inspect(bot_connect, {newline=' ',indent=''}))
-- bot_connect.connect()
