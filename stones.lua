return {
    luaStoned = {
        files = {
            "https://raw.githubusercontent.com/Lupus590-CC/LuaStoned/master/luastoned.lua",
            "https://raw.githubusercontent.com/Lupus590-CC/LuaStoned/master/shim_template.lua",
        },
        mainFile = "luastoned.lua", -- only required in multi file stones
        name = "Lua Stoned",
        summary = "A play on LuaRocks. And a package manager for CC:T.",
        description = "",
        license = "MIT",
        type = "program",
        dependencies = {
            ["stone_manager"] = true,
        },
        shellCompletionFunction = function()
        end,
        requireCcBuiltins = {
            
        },
        helpFiles = {
            "url",
            "url"
        },
        version = "0.0.1",
    },

    stone_manager = {
        files = {
            "https://raw.githubusercontent.com/Lupus590-CC/LuaStoned/master/stone_manager.lua",
        },
        name = "stone_manager",
        summary = "The module that does a lot of the work for the Lua Stoned package manager.",
        description = "Made for Lua Stoned, see the Lua Stoned project at https://github.com/Lupus590-CC/LuaStoned/",
        license = "MIT",
        type = "module",
        dependencies = {

        },
        requireCcBuiltins = {

        },
        version = "0.0.1",
    },
}
