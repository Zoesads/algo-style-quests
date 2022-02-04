--[[

█▄▄ █░█ ▀█▀ █▀▀ █░█ █▀▀ █▀█   ▄▀█   █▀ ▀█▀ █▀█ █ █▄░█ █▀▀
█▄█ █▄█ ░█░ █▄▄ █▀█ ██▄ █▀▄   █▀█   ▄█ ░█░ █▀▄ █ █░▀█ █▄█

DESCRIPTION:

Given a String, your task is to complete the function 'butcher' and return an array.
Your task is to butcher the String such that 2 characters from the string are inserted to an array
in an "in-order" fashion.

For Example, the string "coding" is butchered into {"co", "di", "ng"}. If the length of the string is an
odd number, consider placing only 1 character at the end of the butchered string.

For Example, the string 'hello' is butchered into {"he", "ll", "o"}.

You must also ignore whitespaces

EXAMPLE:

Input: "david is cool"

Output: {"da","vi","di","sc", "oo","l"}

Expected Time Complexity: O(N)

]]--

local function butcher(str)
	local a = {}
    local b = {}
    local n = #str
    for i = 1, n do
        local c = str:sub(i,i)
        if c ~= " " then
            table.insert(b,c)
        end
        if c == " " and #b > 0 or #b == 2 or #b > 0 and i==n then
            table.insert(a,table.concat(b))
            b = {}
        end
    end
    return a
end

local testString = "vegetables are healthy"
print(butcher(testString))