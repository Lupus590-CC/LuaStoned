return {
    luaStoned = {
        files = {
            "url",
        },
        name = "Lua Stoned",
        summary = "A play on LuaRocks. And a package manager for CC:T.",
        description = "",
        license = "MIT",
        type = "program",
        dependencies = {
            ["wrapper"] = true,
            ["repo/slug2"] = version,
        },
        shellCompletionFunction = function()
        end,
        requireCcBuiltins = {
            arg[0],
        },
        helpFiles = {
            "url",
            "url"
        },
        version = "1.0.0",
    },

    wrapper = {
        files = {
            "url",
            "url"
        },
        name = "wrapper",
        summary = "A wrapper script that sets up an enviroment for the specified program.",
        description = "Made for Lua Stoned, see the Lua Stoned project at https://github.com/Lupus590-CC/LuaStoned/",
        license = "MIT",
        type = "program",
        dependencies = {
            ["repo/slug"] = version,
            ["repo/slug2"] = version,
        },
        requireCcBuiltins = {

        },
        version = "1.0.0",
    }
}