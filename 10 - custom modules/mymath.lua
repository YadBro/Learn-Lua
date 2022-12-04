_G.mmath = {}

function mmath.add(x, y)
  return x + y
end

function mmath.power(num1, num2)
  return math.floor(math.abs(num1 ^ num2))
end

return mmath
