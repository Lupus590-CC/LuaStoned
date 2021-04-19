-- a module for managing the various stone files

local function installStone(repo, stone, version) -- TODO: implement
end

local function uninstallStone(repo, stone, version) -- TODO: implement
end

local function checkUpdateStone(repo, stone) -- TODO: implement
end

local function updateStone(repo, stone) -- TODO: implement
end

local function getAllStones() -- TODO: implement
    -- return a representation of the stones file
end

local function getInstalledStones() -- TODO: implement
end

local function loadRepos() -- TODO: implement
end

local function saveRepos() -- TODO: implement
end

local function addRepo(name, url) -- TODO: implement
end

local function removeRepo(name) -- TODO: implement
end

local function getRepoList() -- TODO: implement
    -- return a representation of the repo list
end

local function fetchStones() -- TODO: implement
    -- for each repo get their stones and write them to the local file
end


return {
    installStone = installStone,
    uninstallStone = uninstallStone,
    checkUpdateStone = checkUpdateStone,
    updateStone = updateStone,
    getAllStones = getAllStones,
    getInstalledStones = getInstalledStones,
    loadRepos = loadRepos,
    saveRepos = saveRepos,
    addRepo = addRepo,
    removeRepo = removeRepo,
    getRepoList = getRepoList,
    fetchStones = fetchStones,
}