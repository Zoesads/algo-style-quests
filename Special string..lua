--[[

█▀ █▀█ █▀▀ █▀▀ █ ▄▀█ █░░   █▀ ▀█▀ █▀█ █ █▄░█ █▀▀
▄█ █▀▀ ██▄ █▄▄ █ █▀█ █▄▄   ▄█ ░█░ █▀▄ █ █░▀█ █▄█

DESCRIPTION:

Given a string, your task is to check if it has special characters in it. Complete the function 'special'
and return a boolean. Return true if it has special characters in it else return false.

Special characters are characters like #, $, % @ etc

EXAMPLE:

Input: "roblox safe chat be like ######"
Output: true

Expected Time Complexity: O(N)

]]--

local function special(str)
	for i = 1, #str do
        local v = str:byte(i,i)
        if v > 122 or v < 48 then
            return true
        end
    end
    return false
end

local testString = "we lov$ t@ see th^s"

print(special(testString))