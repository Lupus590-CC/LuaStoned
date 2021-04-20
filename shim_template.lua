
local makePackage = require("cc.require").make

-- TODO: use string.format and placeholders
local programToLoad = shell.getRunningProgram():gsub("^.luastoned/shims/", "")



-- TODO: can a lot of this be put into a module to save disk space?
-- set up the env
local clientEnv = setmetatable({
	multishell = multishell,
	shell = shell,
}, {
	__index = _ENV
})

clientEnv.require, clientEnv.package = makePackage(clientEnv, actualProgramDir)
clientEnv.package.loaders[#package.loaders + 1] = function(name) -- If we didn't want to support multiple versions of the same module then we could modify package.path
	-- TODO: implement
	-- go through the dependencies of this program and load them as required
end

--[[
clientEnv.os = setmetatable({
	-- https://github.com/SquidDev-CC/CC-Tweaked/blob/c45221a2d0e91eaebabc495a817c009e6dc6b321/src/main/resources/data/computercraft/lua/bios.lua#L554
	loadAPI = function(name) -- TODO: implement
		-- attempt to load the known dependencies
		-- go through the dependencies of this program and load them as required
	end,
	unloadAPI = function(name)  -- TODO: implement (might not need to)
	end,
}, {
	__index = os
})
--]]

-- copied from os.run
if settings.get("bios.strict_globals", false) then
	-- load will attempt to set _ENV on this environment, which
	-- throws an error with this protection enabled. Thus we set it here first.
	clientEnv._ENV = clientEnv
	getmetatable(clientEnv).__newindex = function(_, name)
		error("Attempt to create global " .. tostring(name), 2)
	end
end

local fnFile, err = loadfile(actualProgramPath, nil, clientEnv)
if fnFile then
	local ok, err = pcall(fnFile, table.unpack(arg))
	if not ok then
		if err and err ~= "" then
			printError(err) -- how does this work for theres calliong shell.cun on us?
		end
		return false
	end
	return true
end
if err and err ~= "" then
	printError(err)
end
return false
