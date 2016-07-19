--
-- Created by IntelliJ IDEA.
-- User: xiamingxing
-- Date: 16/7/11
-- Time: 下午1:42
-- To change this template use File | Settings | File Templates.
--

local Utils = {}

local cache = {}

Utils.doModule = function (filename)
    return dofile(filename)
end

Utils.loadModule = function (filename)
    local filehandle = loadfile(filename)
    if filehandle == nil then
        error("not find " + filename)
    else
        cache[filename] = loadfile(filename)
    end
    return cache[filename]
end

Utils.runModule = function (filename)
    return cache[filename]()
end

return Utils