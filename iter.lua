--
-- Created by IntelliJ IDEA.
-- User: xiamingxing
-- Date: 16/7/11
-- Time: 下午5:34
-- To change this template use File | Settings | File Templates.
--

local Iter = {}

Iter.gen = function (set)
    local i = 0
    local n = table.maxn(set)
    return function ()
        i = i + 1
        if i < n then
            return set[i]
        end
    end
end

return Iter