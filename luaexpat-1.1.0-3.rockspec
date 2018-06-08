-- This file was automatically generated for the LuaDist project.

package = "luaexpat"
version = "1.1.0-3"
-- LuaDist source
source = {
  tag = "1.1.0-3",
  url = "git://github.com/LuaDist-testing/luaexpat.git"
}
-- Original source
-- source = {
--    url = "http://luaforge.net/frs/download.php/2469/luaexpat-1.1.tar.gz"
-- }
description = {
   summary = "XML Expat parsing",
   detailed = [[
      LuaExpat is a SAX (Simple API for XML) XML parser based on the
      Expat library.
   ]],
   license = "MIT/X11",
   homepage = "http://www.keplerproject.org/luaexpat/"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   EXPAT = {
      header = "expat.h"
   }
}
build = {
   type = "make",
   variables = {
      LUA_VERSION_NUM="501",
   },
   build_variables = {
      LIB_OPTION = "$(LIBFLAG) -L$(EXPAT_LIBDIR)",
      CFLAGS = "$(CFLAGS) -I$(LUA_INCDIR) -I$(EXPAT_INCDIR)",
   },
   install_variables = {
      LUA_LIBDIR = "$(LIBDIR)",
      LUA_DIR = "$(LUADIR)"
   }
}