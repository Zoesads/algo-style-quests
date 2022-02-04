--[[

█▀█ █▀█ █ █▀▄▀█ █▀▀   █▄░█ █░█ █▀▄▀█ █▄▄ █▀▀ █▀█ █▀   █▀ █▀▀ ▄▀█ █▀█ █▀▀ █░█
█▀▀ █▀▄ █ █░▀░█ ██▄   █░▀█ █▄█ █░▀░█ █▄█ ██▄ █▀▄ ▄█   ▄█ ██▄ █▀█ █▀▄ █▄▄ █▀█

DESCRIPTION:

Given an array, your task is to find the count of prime numbers in it.

EXAMPLE

Input: {3,2,4,16,7,5}
Output: 4

Expected Time Complexity: O(n)

]]--

local function countOfPrime(array)
	local function isPrime(x)
        for i = 1, math.sqrt(x) do
            if x%i == 0 then
                return false
            end
        end
        return true
    end
    local c = 0
    for i = 1, #array do
        if isPrime(array[i]) then
            c = c + 1
        end
    end
    return c
end

local testArray = {5,6,21,23,4,5};

print(countOfPrime(testArray));