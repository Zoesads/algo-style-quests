--[[

▀ █▄▀ ▀   █▀ █▀▄▀█ ▄▀█ █░░ █░░ █▀▀ █▀ ▀█▀   █▀▀ █░░ █▀▀ █▀▄▀█ █▀▀ █▄░█ ▀█▀ █▀
░ █░█ ░   ▄█ █░▀░█ █▀█ █▄▄ █▄▄ ██▄ ▄█ ░█░   ██▄ █▄▄ ██▄ █░▀░█ ██▄ █░▀█ ░█░ ▄█

DESCRIPTION:

Given an array and a number K where K is smaller than size of array, the task is to find the Kth smallest 
element in the given array. It is given that all array elements are distinct.

EXAMPLE

Input: 
{7,10,4,20,15}
K = 4

Output: 15

Expected Time Complexity: O(n)

]]--

local function kthSmallestElement(testArray, k)
    table.sort(testArray,function(a,b) return a<b end)
    return testArray[k]
end

local testArray = {5,7,3,10,4,16}

local k = 3

print(kthSmallestElement(testArray, k));