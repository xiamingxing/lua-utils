--
-- Created by IntelliJ IDEA.
-- User: xiamingxing
-- Date: 16/7/11
-- Time: 下午1:49
-- To change this template use File | Settings | File Templates.
--
dofile("common.lua")

print(Str.concat(1, 2))

--list = Stdio.readlines()

Obj.forEach({x=1,y=2}, function (k, v, obj)
    print(k, v)
end)

print(Array.unpack(Array.create(1,3,45,65,6,7, "fds", {1 ,2})))

l = list
while l do
    print(l.value)
    l = l.next
end

function rename (arg)
    print(arg.old, arg.new)
end

rename{ new="temp1.lua", old="temp.lua" }

network = {
    {name = "grauna",    IP = "210.26.30.34"},
    {name = "arraial",   IP = "210.26.30.23"},
    {name = "lua",       IP = "210.26.23.12"},
    {name = "derain",    IP = "210.26.23.20"},
}
table.sort(network, function (a,b)
    return (a.name > b.name)
end)


function eraseTerminal()
    io.write("\27[2J")
end

-- writes an '*' at column 'x' , 'row y'
function mark (x,y)
    io.write(string.format("\27[%d;%dH*", y, x))
end

-- Terminal size
TermSize = {w = 80, h = 24}

-- plot a function
-- (assume that domain and image are in the range [-1,1])
function plot (f)
    eraseTerminal()
    for i=1,TermSize.w do
        local x = (i/TermSize.w)*2 - 1
        local y = (f(x) + 1)/2 * TermSize.h
        mark(i, y)
    end
    io.read()  -- wait before spoiling the screen
end

--plot(function (x) return math.sin(x*2*math.pi) end)


local next = Iter.gen({12,3,4,5,6,7,8})

t = {10, 20, 30}
for element in Iter.gen({12,3,4,5,6,7,8}) do
    print(element)
end

os.exit()

--io.write(page)