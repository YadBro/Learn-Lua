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
