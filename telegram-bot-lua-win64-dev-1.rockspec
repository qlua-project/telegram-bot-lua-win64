package = "telegram-bot-lua-win64"
version = "dev-1"
source = {
   url = "git+ssh://git@github.com/qlua-project/telegram-bot-lua-win64.git"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua >= 5.3, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      ["bot-connect"] = "bot-connect.lua",
      ["src"] = "externals\\telegram-bot-lua\\src"
   }
}
