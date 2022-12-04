local function Pet(name)
  name = name or 'Udin'

  return {
    name = name,
    status = 'Hungry',

    feed = function(self)
      print(name .. ' is fed.')
      self.status = 'Full'
    end
  }
end

local cat = Pet('Kitty')
local dog = Pet()
print(cat.name)
print(dog.name)

print('\n=== Pet status')
print(cat.status)
cat:feed()
print(cat.status)
print(dog.status)


-- Inheritance

local function Dog(name, breed)
  local myDog = Pet(name)

  myDog.breed = breed
  myDog.loyalty = 10

  myDog.isLoyal = function(self)
    return self.loyalty >= 10
  end

  return myDog
end

local ab = Dog('Ab', 'Bulldog')
print(ab:isLoyal())
print(ab.breed)

if ab:isLoyal() then
  print('Will protect against intruder.')
else
  print('Will not protect against intruder.')
end
