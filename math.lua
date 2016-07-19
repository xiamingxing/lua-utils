--
-- Created by IntelliJ IDEA.
-- User: xiamingxing
-- Date: 16/7/11
-- Time: 下午2:00
-- To change this template use File | Settings | File Templates.
--

local Math = {}

Math.fib = function (n)
    if n == 1 or n == 0 then
        return 1
    else
        return Math.fib(n-1) + Math.fib(n-2)
    end
end

Math.fact = function (n)
    if n == 1 or n == 0 then
        return 1
    else
        return n * Math.fact(n-1)
    end
end

Math.number = function (n)
    n = tonumber(n)
    if n == nil then
        return 0
    else
        return n
    end
end

return Math