-- One dimensional array

local array = {}
array[1] = 'A'
array[2] = 'B'
array[3] = 'C'
array[4] = 'D'
array[5] = nil
array['1'] = 'Yadi'
array['2'] = 'Apriyadi'

-- Nilai nil tidak bisa di iterate hanya bisa di akses secara langsung, apabila di paksa di iterate maka akan di skip atau tidak ditampilkan
print(array[5])

-- Tetapi tidak bisa di concatenat dengan tipe data lain
-- print('Ini nilai nil dari array= ' .. array[5]) -- error

-- ipairs hanya akan mengiterasi array numeric saja dengan catatan valuenya tidak boleh nil, apabila nil maka tidak akan di skip
print('\n=== using IPAIRS')
for i, v in ipairs(array) do
  print('Hasil i= ' .. i .. ', Hasil v= ' .. v)
end

-- pairs mengiterasi semuanya mau itu numeric ataupun array association dengan catatan valuenya tidak boleh nil, apabila nil maka tidak akan di skip
print('\n=== using PAIRS')
for i, v in pairs(array) do
  print('Hasil i= ' .. i .. ', Hasil v= ' .. v)
end

-- Kata orang metode next ini adalah metode looping tercepat
print('\n=== using NEXT')
for i, v in next, array do
  print('Hasil i= ' .. i .. ', Hasil v= ' .. v)
end

-- Multi-Dimensional Array
local array2 = {}
array2['name'] = {}
array2['name']['firstName'] = 'Yadi'
array2['name']['lastName'] = 'Apriyadi'
array2[0] = {}
array2[0][0] = {}
array2[0][0][1] = 'yup you got it'
array2[0][0][2] = 'yup you got it 2'


print(array2[0][0][1])
print(array2['name']['firstName'])
print(array2['name']['lastName'])
print(array2['name']['firstName'] .. ' ' .. array2['name']['lastName'])

print('\n=== table methods')
-- seperti di golang ini tidak mengreturn apa apa (void) hanya mengsorting table
table.sort(array2)
table.insert(array, 'new element') -- insert item
table.insert(array, array2) -- insert table
for i, v in next, array do
  if type(v) == 'table' then
    for key, value in pairs(v) do
      if type(key) ~= 'number' then
        print(value['lastName'])
      end
    end
  else
    print(v)
  end
end

print('\n=== table remove')
local array3 = { 1, 2, 3, 'yadi' }

print('-- sebelum')
for i = 1, #array3 do
  print(array3[i]) -- 1, 2, 3
end

print('\n-- sesudah')
table.remove(array3)
for i = 1, #array3 do
  print(array3[i]) -- 1, 2
end
