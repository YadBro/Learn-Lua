--[[
  This is some data types in lua:
  - nil
  - number
  - string
  - boolean
  - table
]]

-- Single comment
--[[
  Multiple comment
]]

--[[
  Three kinds variables in lua
  - local
  - global
  - table fields <=  This is a special type of variable that can hold anything except nil including functions.
]]

-- create a local variable in lua;
print('==== Create a global variable in lua, must be in capital case')
FULLNAME = 'yadi apriyadi'
-- Atau bisa define global variable pake global operator sama seperti php $_GLOBAL['hello']
_G.HELLO = 'Hello'
print(FULLNAME, HELLO)

print('\n==== Create a local variable in lua')
local hello = 'Hello'
local world = 'World'
print(hello, world)

-- merge or add string in lua
print('\n==== Merge or add string in lua')
local helloWorld = hello .. ' ' .. world
print(helloWorld)
print(string.format('%s', helloWorld))


print('\n==== This is multiline string in lua')
local multiLineString = [[Color
  Hello World
please
]]

print(multiLineString)

-- Data Types
print('\n==== Data types in lua')
local nilType = nil;
local stringType = 'string';
local numberType = 0;
local booleanType = true;
local tableType = {}

print(type(nilType))
print(type(stringType))
print(type(numberType))
print(type(booleanType))
print(type(tableType))

-- Multiple variables and values in one line
print('\n==== Multiple variables and values in one line')
-- global (For global variable must be in uppercase definition)
G, L = 20, 30
print(G, L, G + L)
-- local
local a, b = 1, 4
print(a, b, a + b)
