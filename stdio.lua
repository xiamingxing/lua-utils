--
-- Created by IntelliJ IDEA.
-- User: xiamingxing
-- Date: 16/7/11
-- Time: 下午3:58
-- To change this template use File | Settings | File Templates.
--

local Stdio = {}

Stdio.readlines = function(eof)
    eof = eof or ""
    for line in io.lines() do
        if line == eof then
            return list
        else
            list = { next = list, value = line }
        end
    end
end

return Stdio