--[[

█▀▄▀█ █▀▀ █▀█ █▀▀ █▀▀   ▀█▀ █░█░█ █▀█   █▀▄ █ █▀▀ ▀█▀ █ █▀█ █▄░█ ▄▀█ █▀█ █ █▀▀ █▀
█░▀░█ ██▄ █▀▄ █▄█ ██▄   ░█░ ▀▄▀▄▀ █▄█   █▄▀ █ █▄▄ ░█░ █ █▄█ █░▀█ █▀█ █▀▄ █ ██▄ ▄█

DESCRIPTION:

Given two Dictionaries, your task is to complete the function named "merge" which merges the second
dictionary to the first dictionary. Return the first dictionary after being merged.

EXAMPLE:

Input: 
{
	["One"] = 1,
	["Book"] = "Knowledge House",
	["Greetings"] = {"Hi", "Hello!"}
}
{
	["Two"] = 2,
	["Tree"] = "Oxygen House",
	["Name"] = "David"
}

Output: 

{
	["One"] = 1,
	["Book"] = "Knowledge House"
	["Greetings"] = {"Hi", "Hello!"}
	["Two"] = 2,
	["Tree"] = "Oxygen House"
	["Name"] = "David"
}


Expected Time Complexity: O(N)


]]--

local function merge(a, b)
	for i, v in pairs(b) do
		a[i] = v
	end
	return a
end

local testDictionary1 = {
	["One"] = 1,
	["Book"] = "Knowledge House",
	["Greetings"] = {"Hi", "Hello!"}
}

local testDictionary2 = {
	["Two"] = 2,
	["Tree"] = "Oxygen House",
	["Name"] = "David"
}

print(merge(testDictionary1, testDictionary2))