--[[

█▀ █▀█ █ █▀█ ▄▀█ █░░   █▀▄▀█ ▄▀█ ▀█▀ █▀█ █ ▀▄▀
▄█ █▀▀ █ █▀▄ █▀█ █▄▄   █░▀░█ █▀█ ░█░ █▀▄ █ █░█

DESCRIPTION:

You are given a 2D array, a variable 'n' (number of rows and columns). Your task is to print the
matrix in a spiral form.

Example: https://i1.faceprep.in/Companies-1/matrix-in-spiral-form.png

Input: 
{
	{1,6,7},
	{4,5,6},
	{1,4,9}
}

Output: 1 6 7 6 9 4 1 4 5

Expected Time Complexity: O(n^2)

]]--

local function spiral(matrix, n)
	local t = ""
	local function _c(a)
		t = t..a.." "
	end
	for k = 0, n-1 do
		for i = 1+k, n-k do
			_c(matrix[1+k][i])
		end
		for g = 2+k, n-k do
			_c(matrix[g][n-k])
		end
		for j = n-k-1, 1+k, -1 do
			_c(matrix[n-k][j])
		end
		for q = n-k-1, 2+k, -1 do
			_c(matrix[q][1+k])
		end
	end
	print(t)
end

local matrix = {
	{5,6,1,8},
	{1,35,6,1},
	{5,6,1,1},
	{0,0,0,9}
};

local n = 4;

spiral(matrix, n)