--[[

█▀▄▀█ █▀█ █▀▄ █ █▀▀ █▄█   █▀█ █▀█ █ █▀▄▀█ █▀▀   █▄░█ █░█ █▀▄▀█ █▄▄ █▀▀ █▀█
█░▀░█ █▄█ █▄▀ █ █▀░ ░█░   █▀▀ █▀▄ █ █░▀░█ ██▄   █░▀█ █▄█ █░▀░█ █▄█ ██▄ █▀▄

DESCRIPTION:

Given a prime number, your task is to add the smallest number possible to make the prime number, a 
composite number.

EXAMPLE

Input: 7
Output: 8

Expected Time Complexity: O(n)

]]--

local function makeComposite(number)
    if number < 6 then
        return 4
    else
        local function check(x)
            for i = 1, math.sqrt(x) do
                if x%i == 0 then
                    return x
                end
            end
        end
        return (check(number-1) or check(number+1))
    end
end

local testNumber = 23

print(makeComposite(testNumber));