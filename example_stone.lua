return {
    -- example
    stoneName = { -- the unique name of the stone, these must be unique per repo but can have two with the same name so long as they are in different repos
       files = { -- all of these will be downloaded and saved into correct folder (determined by the type)
       -- TODO: how to allow things to define sub folders?
           "url",
           "url"
       },
       mainFile = "", -- only required in multi file stones
       name = "example program",
       summary = "",
       description = "",
       license = "MIT",
       -- TODO: API support?
       type = "module" or "program", -- tells luastoned where to install things
       -- TODO: how should the install/etc functions work?
       -- warn if there is a func?
       sourceCode = "url",
       issueTracker = "url",
       
       preInstallFunc = function() end or nil,
       postInstallFunc = function() end or nil,
       preUninstallFunc = function() end or nil,
       postUninstallFunc = function() end or nil,
       preUpdateFunc = function() end or nil,
       postUpdateFunc = function() end or nil,
       dependencies = {
           ["repo/slug"] = version, -- user will get prompt if the specified version can not be found but another was
           ["repo/slug2"] = true, -- can be true if you don't want to worry about version numbers
           -- TODO: print a warning if a version number was not specified
       },
       shellCompletionFunction = function() end or nil, -- see https://tweaked.cc/module/shell.html#v:setCompletionFunction
       requireCcBuiltins = { -- dependecies for built in CC stuff. TODO: automatically aquire these from 
       -- TODO: how to actually check this?
           require("cc.strings").wrap,
           colours,
       },
       helpFiles = { -- the help file to download and add to the help program's path
           "url",
           "url"
       },
       -- git means that we will try to guess when there are updates due to the latest git commit id changing -- TODO: implement
       -- github and bitbucket and others will do this differently
       version = "1.0.0" or "git", -- will need to figure out how to migrate version and might need rules on version compatability and such (https://semver.org/)
       lastUpdated = "2021-04-17 23:21", -- if you don't have a version number then use this -- TODO: always utc, might use os.epoch instead
       requiresReboot = false, -- if nil then false, when true the user is prompted

   },
}