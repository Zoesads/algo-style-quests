--[[

█▀█ ▄▀█ █▀▄▀█ █▀█ ▄▀█ █▀▀ █▀▀
█▀▄ █▀█ █░▀░█ █▀▀ █▀█ █▄█ ██▄

DESCRIPTION:

There are Infinite People Standing in a row, indexed from 1.
A person having index 'i' has strength of (i*i).
You have Strength 'P'. You need to tell what is the maximum number of People You can Kill With your Strength P.
You can only Kill a person with strength 'X' if P >= 'X'  and after killing him, Your Strength decreases by 'X'.


Your task is to complete the function rampage() which takes the integer N as input parameters and 
returns the maximum Number of People You can kill.

EXAMPLE

Input: N = 14

Output: 3

Expected Time Complexity: O(log(n))

]]--

local function rampage(N)
    local k = 0
    local P = N
    for i = 1, N do
        local X = i*i
        if P - X >= 0 then
           k = k + 1
           P = P - X
        else
            break
        end
    end
    return k
end

local N = 11;

print(rampage(N));