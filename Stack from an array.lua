--[[

█▀ ▀█▀ ▄▀█ █▀▀ █▄▀   █▀▀ █▀█ █▀█ █▀▄▀█   ▄▀█ █▄░█   ▄▀█ █▀█ █▀█ ▄▀█ █▄█
▄█ ░█░ █▀█ █▄▄ █░█   █▀░ █▀▄ █▄█ █░▀░█   █▀█ █░▀█   █▀█ █▀▄ █▀▄ █▀█ ░█░

DESCRIPTION:

Given an empty array, Your task is to complete the functions 'add', 'top' and 'pop'.

function 'add' inserts an element into the array and returns the array
function 'top' returns the last element of the array
function 'pop' removes the last element of the array and removes itself from the array.

Note: You are not allowed to use table.insert, table.remove or any other such functions.

]]--

local function add(stack, element)
	stack[#stack+1] = element
	return stack
end

local function top (stack)
	return stack[#stack]
end

local function pop (stack)
	stack[#stack] = nil
    return stack
end

local stack = {}