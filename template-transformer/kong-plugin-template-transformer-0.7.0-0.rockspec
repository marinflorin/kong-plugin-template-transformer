package = "kong-plugin-template-transformer"
version = "0.7.0-0"
source = {
   url = "https://github.com/stone-payments/kong-plugin-template-transformer",
}
description = {
  summary = "A Kong plugin that enables template transforming",
  license = "Apache License 2.0"
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-http",
  "lua-resty-template >= 1.9-1"
}
build = {
   type = "builtin",
   modules = {
    ["kong.plugins.kong-plugin-template-transformer.handler"] = "./handler.lua",
    ["kong.plugins.kong-plugin-template-transformer.schema"] = "./schema.lua",
    ["kong.plugins.kong-plugin-template-transformer.template_transformer"] = "./template_transformer.lua",
    ["kong.plugins.kong-plugin-template-transformer.utils"] = "./utils.lua"
   }
}