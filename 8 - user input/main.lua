local num1, num2 = 10, 5
local trueAnswer = num1 + num2

io.write('What is ' .. num1 .. '+' .. num2 .. '? ')
local ans = io.read('n')

if ans == trueAnswer then
  print('You are correct')
else
  print('Your answer ' .. ans .. ', is incorrect! Try again!')
end
