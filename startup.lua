shell.setPath(shell.path()..":/.luastoned/shims")

for k, program in pairs(programs) do
    shell.setCompletionFunction(program.name, program.shellCompleationFunction)
end

help.setPath(help.path()..":/.luastoned/help")