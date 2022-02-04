--[[

█▀▄ █ █▀▀ █ ▀█▀ █▀   █▀█ █▀▀   ▀█▀ █░█ █▀▀   █ █▄░█ ▀█▀ █▀▀ █▀▀ █▀▀ █▀█
█▄▀ █ █▄█ █ ░█░ ▄█   █▄█ █▀░   ░█░ █▀█ ██▄   █ █░▀█ ░█░ ██▄ █▄█ ██▄ █▀▄

DESCRIPTION:

Given an integer, your task is to print all of its digits in an 'in-order' fassion

EXAMPLE

Input: 463

Output: 4 6 3

Expected Time Complexity: O(n)

]]--

local function printDigits(number)
	local s = tostring(number)
    local t = ""
    for i = 1, #s do
        t = t .. s:sub(i,i) .. " "
    end
    print(t)
end

local testInt = 256;

printDigits(testInt);