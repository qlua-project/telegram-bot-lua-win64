rockspec_format = "1.1"
package = "qlua-telegram-notifier"
version = "dev-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua ~> 5.3",
   "telegram-bot-lua ~>1.10-0"
}
build = {
   type = "builtin",
   modules = {}
}
