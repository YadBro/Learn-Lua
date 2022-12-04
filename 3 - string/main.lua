-- Mencari data length dari string
print('\n==== Data length string')
local introduction = 'introduction'
print(#introduction)
local sameHere = #'sameHere'
print(sameHere)

-- Mengganti huruf
print('\n==== Mengganti huruf')
print(string.gsub(introduction, 'o', 'i'))

-- Escape Character
print('\n==== Escape character')
print('Hello\nWorld\t!!!!!\vI am \"Yadi\\Apriyadi\"')


-- String methods
print('\n==== String methods')
print(string.lower(introduction))
print(string.upper(introduction))
print(string.sub(introduction, 6))
print(string.sub(introduction, 1, 5))
print(string.find(introduction, 'intro')) -- return sub integer
