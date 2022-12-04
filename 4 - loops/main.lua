--[[
  Ada beberapa jenis looping di lua
  - while loop
  - for loop
  - repeat loop
  - nested loop

  JANGAN SAMPE MASUK INFINITE LOOPS
]]


print('=== WHILE LOOPS')
print('-- increment')
local a = 1
while (a <= 10) do
  print("Value of a:", a)
  a = a + 1
end

print('-- decrement')
local b = 10
while (b > 0) do
  print("Value of b:", b)
  b = b - 1
end

print('\n=== FOR LOOPS')
print('-- increment')
for c = 1, 10, 1 do
  print(string.format("Value of c: %s", c))
end

print('\n-- decrement')
for d = 10, 1, -1 do
  print('Value of d:', d)
end

print('\n=== REPEAT LOOPS')
print('-- increment')
local e = 1
repeat
  print('Value of e:', e)
  e = e + 1
until (e > 10)

print('\n-- decrement')
local d = 10
repeat
  print('Value of e:', d)
  d = d - 1
until (d < 1)


print('\n=== NESTED LOOPS')
J = 2
for i = 2, 10 do
  for J = 2, (i / J), 2 do

    if (not (i % J))
    then
      break
    end

    if (J > (i / J)) then
      print("Value of i is", i)
    end

  end
end
