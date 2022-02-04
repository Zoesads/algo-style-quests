--[[

█▀▄▀█ ▄▀█ ▀▄▀   █▀█ █▄░█ █▀▀ █▀
█░▀░█ █▀█ █░█   █▄█ █░▀█ ██▄ ▄█

DESCRIPTION:

You are given a 2D Array that consists of only 0s and 1s. Your task is to return the first row number that
has the maximum amount of 1s in it.

EXAMPLE

Input: {
	{1,0,0},
	{0,1,1},
	{0,0,0}
}

Output: 2

Expected Time Complexity: O(n^2)

]]--

local function maxOnes(matrix)
    local m = -math.huge
    local n = -1
    for i = 1, #matrix do
        local c = 0
        for g = 1, #matrix[i] do
            if matrix[i][g] == 1 then
                c = c + 1
            end
        end
        if m < c then
            m = c
            n = i
        end
    end
    return n
end

local matrix = {
	{0,1,0,1},
	{1,0,0,0},
	{1,1,1,0},
	{1,0,1,0}
}

print(maxOnes(matrix));