telegram-bot-lua

https://github.com/qlua-project/telegram-bot-lua.git

> luarocks install https://raw.githubusercontent.com/qlua-project/telegram-bot-lua/refs/heads/main/telegram-bot-lua-2.0-0.rockspec

  win32 support added

Patched path/cpath

  > lua54.bat src\bot-connect.lua
  > lua53.bat src\bot-connect.lua

Native structure

  > dist\bot-connect\lua54.exe dist\bot-connect\run.lua
  > dist\bot-connect\lua53.exe dist\bot-connect\run.lua


- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

https://luarocks.org/modules/wrxck/telegram-bot-lua

> luarocks install telegram-bot-lua

  Error: This rockspec for telegram-bot-lua does not support mingw, mingw32, win32, windows platforms.

== Final Commands:

> luarocks54 make "OPENSSL_DIR=%CD%\externals\openssl"
> luarocks53 make "OPENSSL_DIR=%CD%\externals\openssl"

> lua54 src\bot-connect.lua
> lua53 src\bot-connect.lua

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

luarocks-3.11.1-windows-64.zip (luarocks.exe stand-alone Windows 64-bit binary)

  https://luarocks.github.io/luarocks/releases/luarocks-3.11.1-windows-64.zip

    luarocks-admin.exe
    luarocks.exe

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

luarocks.exe

  > luarocks -h
  > luarocks --lua-dir externals/lua --versbose config

  > luarocks --lua-dir externals/lua init -h

          Usage: luarocks init [-h] [--wrapper-dir <wrapper_dir>] [--reset]
                 [--no-wrapper-scripts] [--no-gitignore] [--output <file>]
                 [--license <string>] [--summary <txt>] [--detailed <txt>]
                 [--homepage <txt>] [--lua-versions <ver>]
                 [--rockspec-format <ver>] [--tag <tag>] [--lib <libs>] [<name>]
                 [<version>]
          Arguments:
             name                  The project name.
             version               An optional project version.
          Options for specifying rockspec data:
             --output <file>       Write the rockspec with the given filename.
                                   If not given, a file is written in the current
                                   directory with a filename based on given name and
                                   version.
             --license <string>    A license string, such as "MIT/X11" or "GNU GPL v3".
             --summary <txt>       A short one-line description summary.
             --detailed <txt>      A longer description string.
             --homepage <txt>      Project homepage.
             --lua-versions <ver>  Supported Lua versions. Accepted values are: "5.1",
                                   "5.2", "5.3", "5.4", "5.1,5.2", "5.2,5.3", "5.3,5.4",
                                   "5.1,5.2,5.3", "5.2,5.3,5.4", "5.1,5.2,5.3,5.4".
             --rockspec-format <ver>
                                   Rockspec format version, such as "1.0" or "1.1".
             --tag <tag>           Tag to use. Will attempt to extract version number from
                                   it.
             --lib <libs>          A comma-separated list of libraries that C files need
                                   to link to.
          Other options:
             --wrapper-dir <wrapper_dir>
                                   Location where the 'lua' and 'luarocks' wrapper scripts
                                   should be generated; if not given, the current
                                   directory is used as a default.
             --reset               Delete any .luarocks/config-5.x.lua and ./lua and
                                   generate new ones.
             --no-wrapper-scripts  Do not generate wrapper ./lua and ./luarocks launcher
                                   scripts.
             --no-gitignore        Do not generate a .gitignore file.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  > luarocks --lua-dir externals/lua init --lua-versions "5.3,5.4" --no-gitignore telegram-bot-lua-win64

        Wrote template telegram-bot-lua-dev-1.rockspec -- you should now edit and finish it.

          Preparing ./.luarocks/ ...
          Wrote .luarocks/config-5.4.lua
          Preparing ./lua_modules/ ...
          Preparing luarocks.bat ...
          Preparing lua.bat for version 5.4...

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  > luarocks build -h

        If no arguments are given, behaves as luarocks make.

  > luarocks make -h

        Builds sources in the current directory, but unlike "build", it does not fetch
        sources, etc., assuming everything is available in the current directory. If no
        argument is given, it looks for a rockspec in the current directory and in
        "rockspec/" and "rockspecs/" subdirectories

        This command is useful as a tool for debugging rockspecs.

        If the current directory contains a luarocks.lock file, it is used as the
        authoritative source for exact version of dependencies. The --pin flag
        overrides and recreates this file scanning dependency based on ranges.

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

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

https://github.com/luarocks/luarocks/blob/main/docs/paths_and_external_dependencies.md

  avoid the "works on my machine" situation

 - https://github.com/luarocks/luarocks/blob/main/docs/rockspec_format.md
 - https://github.com/luarocks/luarocks/blob/main/docs/config_file_format.md
 - https://github.com/luarocks/luarocks/blob/main/docs/platform_agnostic_external_dependencies.md
 - https://github.com/luarocks/luarocks/blob/main/docs/platform_overrides.md

  external_dependencies = {
      FOO = {
         library = "foo"
      }
  }

  once you added FOO in the external_dependencies, this means you can pass FOO_DIR
  (since 3.4.0, the variable DEPS_DIR which doesn't depend on the name FOO, could also used)

  > luarocks install my_rockspec_using_foo-1.0-1.rockspec FOO_LIBDIR=/home/joeuser/foo/lib
  > luarocks install my_rockspec_using_foo-1.0-1.rockspec DEPS_DIR=/home/joeuser/foo/lib

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

