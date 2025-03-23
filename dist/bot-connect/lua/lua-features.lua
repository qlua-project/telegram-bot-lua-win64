local inspect = require("inspect")

function basicSerialize (o)
  if type(o) == "number" then
    return tostring(o)
  else   -- assume it is a string
    return string.format("%q", o)
  end
end
function save (name, value, saved)
  saved = saved or {}       -- initial value
  io.write(name, " = ")
  if type(value) == "number" or type(value) == "string" then
    io.write(basicSerialize(value), "\n")
  elseif type(value) == "table" then
    if saved[value] then    -- value already saved?
      io.write(saved[value], "\n")  -- use its previous name
    else
      saved[value] = name   -- save name for next time
      io.write("{}\n")     -- create a new table
      for k,v in pairs(value) do      -- save its fields
        local fieldname = string.format("%s[%s]", name,
                                        basicSerialize(k))
        save(fieldname, v, saved)
      end
    end
  else
    -- error("cannot save a " .. type(value))
    io.write(tostring(value), "\n")
  end
end

-- inspect(_ENV)
-- print(_ENV)
-- save("_ENV",_ENV)

local tab do
	local obj_local = { method = function(self, n) print(n) end }
	tab = setmetatable({}, { __index = function(idx, key)
		print("Accessing " .. tostring(idx) .." ".. key)
		save("idx", idx)
		if key == "obj"  then  return obj_local end
	end})
end

print"\ntab.obj"
local obj = tab.obj

print"\ntab.obj.method(tab.obj, 20)"
tab.obj.method(tab.obj, 20)

print"\ntab.obj:method(10)"
tab.obj:method(10)

print()
print(type("abc"))
print(("abc"):rep(30))
print(("abc"):sub(1,2):rep(30))
