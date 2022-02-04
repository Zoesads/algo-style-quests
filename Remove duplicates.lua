--[[

█▀█ █▀▀ █▀▄▀█ █▀█ █░█ █▀▀   █▀▄ █░█ █▀█ █░░ █ █▀▀ ▄▀█ ▀█▀ █▀▀ █▀
█▀▄ ██▄ █░▀░█ █▄█ ▀▄▀ ██▄   █▄▀ █▄█ █▀▀ █▄▄ █ █▄▄ █▀█ ░█░ ██▄ ▄█

DESCRIPTION:

Given a string, your task is to remove all duplicate characters and return it.

EXAMPLE

Input: "vegetables"

Output: "vegtabls"

Expected Time Complexity: O(n)

]]--

local function removeDuplicates(str)
    local a = {}
    local s = ""
    for i = 1, #str do
        a[str[i]] = a[str[i]] and 1 or 0
    end
    for g = 1, #str do
        if a[str[g]] == 0 then
            s = s .. str[g]
        end
    end
    return s
end

local testString = "codersforlife";

print(removeDuplicates(testString));