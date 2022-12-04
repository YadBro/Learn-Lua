local adult, young = 18, 14
local age = 18
-- adult, young, baby
if (age >= adult) then
  print('He is adult')
elseif (age >= young) then
  print('He is young')
else
  print('He is baby')
end


if type(age) == "nil" then
  print(nil)
end
