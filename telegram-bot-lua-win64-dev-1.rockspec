package = "telegram-bot-lua-win64"
version = "dev-1"
source = {
   url = "git+ssh://git@github.com/qlua-project/telegram-bot-lua-win64.git",
   dir = "telegram-bot-lua",
   branch = "main",
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua >= 5.3, < 5.5",

   "dkjson >= 2.5-2",
   "lpeg >= 1.0.1-1",
   "luasec >= 0.6-1",
   "luasocket >= 3.0rc1-2",
   "multipart-post >= 1.1-1",
   "luautf8 >= 0.1.1-1",
   "html-entities >= 1.3.1-0",
}
external_dependencies = {
   OPENSSL = {
      header = "openssl/ssl.h",
   }
}
build = {
   type = "builtin",
   modules = {
      ["telegram-bot-lua.config"] = "externals/telegram-bot-lua/src/config.lua",
      ["telegram-bot-lua.core"] = "externals/telegram-bot-lua/src/core.lua",
      ["telegram-bot-lua.tools"] = "externals/telegram-bot-lua/src/tools.lua",
      ["telegram-bot-lua.b64url"] = "externals/telegram-bot-lua/src/b64url.lua",
   }
}
