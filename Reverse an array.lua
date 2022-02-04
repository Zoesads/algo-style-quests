--[[

█▀█ █▀▀ █░█ █▀▀ █▀█ █▀ █▀▀   ▄▀█ █▄░█   ▄▀█ █▀█ █▀█ ▄▀█ █▄█
█▀▄ ██▄ ▀▄▀ ██▄ █▀▄ ▄█ ██▄   █▀█ █░▀█   █▀█ █▀▄ █▀▄ █▀█ ░█░

DESCRIPTION:

Given an array, complete the function 'reverse', reverse the array and then return it!

EXAMPLE:

Input: {1,6,4,2}

Output: {2,4,6,1}

Expected Time Complexity: O(N)

]]--

local function reverse(array)
	local reversed_array = {}
    for i = #array, 1, -1 do
        table.insert(reversed_array,array[i])
    end
    return reversed_array
end

local testArray = {"nope", 4, 6, 11, 0, 9}

print(reverse(testArray))