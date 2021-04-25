
-- local ok, err = http.request(url)
-- os.pullEvent()
    -- "http_success", url, {close, readAll}
    -- "http_failure", url, errorMessage, {close, readAll}

local toDownload = {
    ["https://raw.githubusercontent.com/Lupus590-CC/LuaStoned/master/stone_manager.lua"] = ".luastoned/modules/stone_manager/latest.lua",
    ["https://raw.githubusercontent.com/Lupus590-CC/LuaStoned/master/luastoned.lua"] = ".luastoned/programs/luastoned/main.lua",
    ["https://raw.githubusercontent.com/Lupus590-CC/LuaStoned/master/repo_list.lua"] = ".luastoned/repo_list.lua",
    ["https://raw.githubusercontent.com/Lupus590-CC/LuaStoned/master/shim_template.lua"] = ".luastoned/modules/stone_manager/latest.lua",
    ["https://raw.githubusercontent.com/Lupus590-CC/LuaStoned/master/startup.lua"] = "startup/0_lua_stoned.lua"
}

local successfulRequestCount = 0
for url in pairs(toDownload) do
    local ok, err = http.request(url)
    if ok then
        successfulRequestCount = successfulRequestCount + 1
    else
        printError("Error with http request to: "..url)
        printError(err)
    end
end

if successfulRequestCount == 0 then
    error("Failed to download everything.")
end

local completedRequestCount = 0
while true do
    local event, url, errOrHandle, errHandle = os.pullEvent()
    if event == "http_success" then
        local httpHandle = errOrHandle
        local fileName = toDownload[url]
        local fileHandle, err = fs.open(fileName, "w")
        if fileHandle then
            fileHandle.write(httpHandle.readAll())
            fileHandle.close()
        else
            printError("Error donwloading file to: "..fileName)
            printError(err)
        end
        httpHandle.close()
        completedRequestCount = completedRequestCount + 1
    elseif event == "http_failure" then
        local err = errOrHandle
        local handle = errHandle
        printError("Error with download from: "..url)
        printError(err)
        handle.close()
        completedRequestCount = completedRequestCount + 1
    end

    if completedRequestCount == successfulRequestCount then
        break
    end
end

-- TODO: make the shim for luastoned