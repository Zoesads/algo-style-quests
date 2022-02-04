--[[

█▀ █▀█ █░█ ▄▀█ █▀█ █▀▀   █▀█ █▀█ █▀█ ▀█▀
▄█ ▀▀█ █▄█ █▀█ █▀▄ ██▄   █▀▄ █▄█ █▄█ ░█░

DESCRIPTION:

Given an integer 'a', find the square root of 'a'. If 'a' is not a perfect square, then return floor(√a).

EXAMPLE

Input: 16

Output: 4

Expected Time Complexity: O(log(n))

]]--

local function squareRoot(number)
    return math.floor(math.sqrt(number))
end

local testInt = 64;

print(squareRoot(testInt));