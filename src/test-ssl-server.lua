local socket = require("socket")
local ssl = require("ssl")

-- TLS/SSL server parameters (omitted)
local params = {}

local server = socket.tcp()
server:bind("127.0.0.1", 8888)
server:listen()
local conn = server:accept()

-- TLS/SSL initialization
conn = ssl.wrap(conn, params)
conn:dohandshake()
--
conn:send("one line\n")
conn:close()
