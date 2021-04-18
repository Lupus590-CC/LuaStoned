-- TODO: program autocompletes
shell.setCompletionFunction(".luastoned/wrapper.lua", function(shell, index, argument, previous)
    -- previous[1] is the program alias
    return installedPrograms[previous[1]].shellCompleateFunction(shell, index, argument, previous)
end)

-- TODO: alias programs
for _, program in pairs(installedPrograms) do
    shell.setAlias(program.name, ".luastoned/wrapper.lua")
end
