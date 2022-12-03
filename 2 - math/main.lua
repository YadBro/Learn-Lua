print('=== Basics')
print(3 ^ 3)
print(2 - 3)
print(10 * 5 + (2 + 6 - (10 - 2)))

-- Math methods
print('=== Math methods')
print(math.pi) -- 3.14 atau 22/7 di matematika lingkaran
print(math.random()) -- random number. Default float number
print(math.random(1, 5)) -- random number around 1 and 5. Default float number
print(math.random(20))
math.randomseed(os.time())
print(math.random())
print(os.time())

print('=== Search for minimum value')
print(math.min(1, 2, 20, 503, 2, 5, 11))
print(math.max(1, 2, 20, 503, 2, 5, 11))
print(math.floor(0.5))
print(math.ceil(0.5))
