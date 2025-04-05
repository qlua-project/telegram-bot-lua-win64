print()
print(package.path)
print()
print(package.cpath)

local inspect = require("inspect")

print()
print(inspect(_G))

print()
print('lua-features', inspect(package.loaded['lua-features']))
-- dofile("lua/lua-features.lua")
require("lua-features")

print()
print('lua-features', inspect(package.loaded['lua-features']))

print()
-- {
--   lastlinedefined = 0,
--   linedefined = 0,
--   short_src = "run.lua",
--   source = "@run.lua",
--   what = "main"
-- }
print(debug.getinfo(1, "S"))
print(inspect(debug.getinfo(1, "S")))
-- print(debug.getinfo(1, "S").source:sub(2))
print(debug.getinfo(1, "S").short_src)

-- https://www.lua.org/pil/21.1.html (Simple I/O Model)
-- "*all"  reads the whole file
-- "*line"  reads the next line
-- print(io.popen("cd"):read'*all')
-- https://www.lua.org/manual/5.4/manual.html#pdf-file:read
-- "l": reads the next line skipping the end of line, returning fail on end of file. This is the default format.
print(io.popen("cd"):read('l'))
print(io.popen("cd"):read() .. '/' .. debug.getinfo(1, "S").short_src)

print()
dofile("lua/bot-connect.lua")
