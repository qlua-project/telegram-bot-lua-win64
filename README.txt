telegram-bot-lua

https://luarocks.org/modules/wrxck/telegram-bot-lua

> luarocks install telegram-bot-lua

  Error: This rockspec for telegram-bot-lua does not support mingw, mingw32, win32, windows platforms.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

luarocks-3.11.1-windows-64.zip (luarocks.exe stand-alone Windows 64-bit binary)

  https://luarocks.github.io/luarocks/releases/luarocks-3.11.1-windows-64.zip

    luarocks-admin.exe
    luarocks.exe

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

luarocks.exe

  > luarocks -h
  > luarocks --lua-dir externals/lua --versbose config

  > luarocks --lua-dir externals/lua init

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

https://github.com/wrxck/telegram-bot-lua/blob/main/telegram-bot-lua-2.0-0.rockspec

  dependencies = {
      "dkjson >= 2.5-2",
      "lpeg >= 1.0.1-1",
      "luasec >= 0.6-1",
      "luasocket >= 3.0rc1-2",
      "multipart-post >= 1.1-1",
      "luautf8 >= 0.1.1-1",
      "html-entities >= 1.3.1-0"
  }

  > luarocks install dkjson
  > luarocks install lpeg
  > luarocks install luasec
  > luarocks install luasocket
  > luarocks install multipart-post
  > luarocks install luautf8
  > luarocks install html-entities

