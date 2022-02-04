--[[

█▀█ █▀▀ █▀█ █░░ ▄▀█ █▀▀ █▀▀   █▀█   █░█░█ █ ▀█▀ █░█   ▄█
█▀▄ ██▄ █▀▀ █▄▄ █▀█ █▄▄ ██▄   █▄█   ▀▄▀▄▀ █ ░█░ █▀█   ░█

DESCRIPTION:

Given an array of Integers, your task is to complete the function named "replace" which replaces each 0 
in the array with 1 and return the updated array. Replicating the array is not allowed.

EXAMPLE:

Input: {1,5,62,0,4,0,5,0,0,9}
Output: {1,5,62,1,4,1,5,1,1,9}

Expected Time Complexity: O(N)


]]--

function replace (array)
	for i = 1, #array do
        array[i] = array[i] == 0 and 1 or array[i]
    end
	return array
end

local testInput = {1,6,7,0,3,0,56,0,3,0,7,0,0}

print(replace(testInput))