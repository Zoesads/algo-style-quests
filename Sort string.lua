--[[

█▀ █▀█ █▀█ ▀█▀   █▀ ▀█▀ █▀█ █ █▄░█ █▀▀
▄█ █▄█ █▀▄ ░█░   ▄█ ░█░ █▀▄ █ █░▀█ █▄█

DESCRIPTION:

Given a string, your task is to sort the characters of the string in alphabetical order.

EXAMPLE

Input: "coder"
Output: "cdeor"

Expected Time Complexity: O(n)

]]--

local function sortString(str)
    local n = #str
    local a = (function()
        local b = {}
        for c = 1, n do
            table.insert(b,str:byte(c,c))
        end
        return b
    end)()
    table.sort(a,function(x,y) return x < y end)
    for i = 1, n do
        a[i] = string.char(a[i])
    end
    return table.concat(a)
end

local testString = "carrots"

print(sortString(testString));