--[[

█▀█ █▀▀ █▀▀ █░█ █▀█ █▀ █ █░█ █▀▀   █▀█ ▄▀█ ▀█▀ ▀█▀ █▀▀ █▀█ █▄░█
█▀▄ ██▄ █▄▄ █▄█ █▀▄ ▄█ █ ▀▄▀ ██▄   █▀▀ █▀█ ░█░ ░█░ ██▄ █▀▄ █░▀█

DESCRIPTION:

Given an Integer 'n', your task is to print a pattern containing 10 numbers recursively. The pattern is
as follows: 

Let 'n' be 3
Expected Pattern: 3,4,6,9,13,18 and so on...

EXAMPLE:

Input: 2

Output: 

2
3
5
8
12
17
23
30
38
47

]]--

local function f(x)
    local function recursive_pattern(a,b)
        print(a)
        return (b<10 and recursive_pattern(a+b,b+1) or 0)
    end
    recursive_pattern(x,1)
end