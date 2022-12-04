local function test(num1, ...)
  local a = { 2, 3 }
  a.x = 10
  print(a[1])
  -- kalo di javascript ini kaya join table.concat itu bukan untuk menggabungkan table
  local b = table.concat(a, ', ')
  print(b)

  local c = 0;
  for i, v in ipairs({ ... }) do
    c = c + v
  end
  print('Hasil argument ke 2 dst= ' .. c)
  return 'Hasil random= ' .. num1 + ... + ... + #a + a.x
end

print(test(1, 2, 5, 5, 5, 10, 5, 5))

-- Recursive function
print('\n Recursive function')
local function counter(number, endNumber)
  local count = number + 1

  if count < endNumber then
    print('counter at ' .. count)
    return counter(count, endNumber)
  end

  return count
end

print(counter(1, 10))
