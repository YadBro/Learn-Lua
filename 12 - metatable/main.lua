local function sum(num1, num2)
  return num1 + num2
end

local metatable = {
  __add = sum
}

local table1 = { num = 1 }
local table2 = { num = 2 }

setmetatable(table1, metatable)

print(table1.num + table2.num)
