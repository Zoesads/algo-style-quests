--[[

█▀█ █▀▀ █░█ █▀▀ █▀█ █▀ █▀▀   █▀▀ █ █▀█ █▀ ▀█▀   ▀ █▄▀ ▀   █▀▀ █░░ █▀▀ █▀▄▀█ █▀▀ █▄░█ ▀█▀ █▀
█▀▄ ██▄ ▀▄▀ ██▄ █▀▄ ▄█ ██▄   █▀░ █ █▀▄ ▄█ ░█░   ░ █░█ ░   ██▄ █▄▄ ██▄ █░▀░█ ██▄ █░▀█ ░█░ ▄█

DESCRIPTION:

You are given an array and an integer 'k'. Your task is to reverse only the first 'k' elements of the 
array and then return it.

Input: 
{1,4,5,6,7,7,1} 
k = 3

Output: {5,4,1,6,7,7,1}

Expected Time Complexity: O(n)

]]--

local function reverseFirstKElements(testArray, n)
    local a = 1
    local b = n
    while a < b do
        local tmp = testArray[a]
        testArray[a] = testArray[b]
        testArray[b] = tmp
        a = a + 1
        b = b - 1
    end
    return testArray
end

local testArray = {6,7,3,1,3,4,1,2};
local k = 4;

print(reverseFirstKElements(testArray, k));