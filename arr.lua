--
-- Created by IntelliJ IDEA.
-- User: xiamingxing
-- Date: 16/7/11
-- Time: 下午3:53
-- To change this template use File | Settings | File Templates.
--

local Array = {}

Array.create = function (...)
    local arr = {}
    for i, v in ipairs{...} do
        arr[i] = v
    end
    return arr
end

Array.isArray = function ()

end


Array.unpack = function (arr)
    return unpack(arr)
end
return Array