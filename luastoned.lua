-- TODO: write the actual package manager


-- luastoned install <packageName> [version] -- packageName can be repo/packageName
-- luastoned remove <packageName>
-- luastoned update [packageName] -- if packageName is nil then all packages will be updated
-- luastoned updateCheck [packageName] -- if packageName is nil then all packages will be updated
-- luastoned list [mask]
-- luastoned listInstalled [mask]
-- luastoned addRepo <name> <url/file> -- add one repo to the list
-- luastoned importRepoList <url/file> -- import a list of repos and merge it with the local list