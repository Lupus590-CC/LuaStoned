# LuaStoned
A play on LuaRocks. And a package manager for CC:T.

Taking inspiration from [Lyqyd's Packman](https://github.com/lyqyd/cc-packman).

# Installing
`wget run https://raw.githubusercontent.com/Lupus590-CC/LuaStoned/master/bootstrap.lua`
and then follow the on screen instuctions

# Example stone file
https://github.com/Lupus590-CC/LuaStoned/blob/master/example_stone.lua
```lua:example_stone.lua
```

You might have notice that we make no effort to hide that we are actually using lua files to store these. I'm a lazy human and don't want to make a custom format parser.

# Large TODOs
* TODO: Lyqyd's packman support?
* TODO: SquidDev's blue shiny rocks support?
* TODO: missing CC builtin files?
* TODO: how to handle unused dependencies?
* TODO: how to handle dependencies changing on update?
* TODO: file metadata for what files belong to which installed programs and which were created but which program? kinda like https://www.computercraft.info/forums2/index.php?/topic/18646-rfc-metadata-file-structure-compatible-with-all-file-types/
