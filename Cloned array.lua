--[[


█▀▀ █░░ █▀█ █▄░█ █▀▀ █▀▄   ▄▀█ █▀█ █▀█ ▄▀█ █▄█
█▄▄ █▄▄ █▄█ █░▀█ ██▄ █▄▀   █▀█ █▀▄ █▀▄ █▀█ ░█░

DESCRIPTION:

Given two arrays, your task is to find out whether the arrays are exact clones of each other. Complete 
the 'cloned' function which returns a boolean.

EXAMPLE:

Input: 

{1,3,5,6}
{1,3,5,6}

Output: 

true

Input: 

{5,100,"hi",6,"no"}
{9,7,7,3}

Output: 

false

Expected Time Complexity: O(N)


]]--

local function cloned(a, b)
	return #a == #b and (function()
        for i, v in pairs(a) do
            if v ~= b[i] then
                return false
            end
        end
        return true
    end)()
end

local testArray1 = {5,7,8,9,1}

local testArray2 = {"yes",3,7}

print(cloned(testArray1, testArray2));