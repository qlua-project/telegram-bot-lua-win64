package = "telegram-bot-lua-win64"
version = "dev-1"
source = {
   url = "git+ssh://git@github.com/qlua-project/telegram-bot-lua-win64.git",
   dir = "telegram-bot-lua",
   branch = "main",
}
dependencies = {
   "lua >= 5.3, < 5.5",
   "telegram-bot-lua",
}
build = {
   type = "none",
}
