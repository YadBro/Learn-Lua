local function sum(num1, num2)
  return num1.num + num2.num
end

local function substraction(num1, num2)
  return num1.num + num2.num
end

local metatable = {
  __add = sum,
  __sub = substraction
}

local table1 = { num = 1 }
local table2 = { num = 2 }

setmetatable(table1, metatable)

print(table1 - table2)
