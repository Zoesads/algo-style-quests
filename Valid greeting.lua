--[[

Valid greeting

DESCRIPTION:

Given a string, your task is to check if it has a Valid Greeting in it. Complete the function "validity"
which returns a boolean. true for valid and false for invalid.

Here are a set of greetings that must be in the string to make it valid. (Make sure its case sensitive)

"hello"
"goodday"
"sup"
"good morning"
"good afternoon"
"good evening"

EXAMPLE:

Input: "hello everyone!"

Output: true

Expected Time Complexity: O(N)

]]--

local function validity(str)
    local a = {"hello", "goodday", "sup", "good morning", "good afternoon", "good evening"}
    for _, i in pairs(a) do
        if str:find(i) or str:find((i:sub(1,1)):upper()..i:sub(2,#i)) then
            return true
        end
    end
    return false
end

local testString = "hello everyone! How are you?"

print(validity(testString))