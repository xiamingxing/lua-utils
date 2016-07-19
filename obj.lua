--
-- Created by IntelliJ IDEA.
-- User: xiamingxing
-- Date: 16/7/11
-- Time: 下午4:26
-- To change this template use File | Settings | File Templates.
--

local Obj = {}

Obj.forEach = function (obj, callback)
    if type(callback) == "function" then
        for k, v in pairs(obj) do
            if false == callback(k, v, obj) then
                break
            end
        end
    end
   return obj
end

return Obj