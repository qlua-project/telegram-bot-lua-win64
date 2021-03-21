local socket = require("socket")
local ssl = require("ssl")

-- TLS/SSL client parameters (omitted)
local params = {}

local conn = socket.tcp()
conn:connect("127.0.0.1", 8888)

-- TLS/SSL initialization
conn = ssl.wrap(conn, params)
conn:dohandshake()
--
print(conn:receive("*l"))
conn:close()
