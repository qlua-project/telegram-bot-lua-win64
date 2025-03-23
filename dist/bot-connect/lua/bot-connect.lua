local api = require('telegram-bot-lua.core')
        .configure(os.getenv('API_TOKEN'))

print("OK!")

local inspect = require('inspect')

print(inspect({a={b=2}}))

-- testing your bot's auth token
for k,v in pairs(api.get_me()) do print(k,v) end
-- inspect(api.get_me()) -- do not work
do
	local me = api.get_me()
	print(inspect(me))
end

function api.on_message(message)
	print("api.on_message" .. tostring(message))
	print(inspect(message))
end

function api.on_update(update)
	print("api.on_update" .. tostring(update))
	print(inspect(update))
end

-- api.run()

local chat_id = os.getenv('CHAT_ID')
api.send_message(chat_id, "notification")
