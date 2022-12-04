-- co-routine like async await in javascript (node.js)
local routine1 = coroutine.create(
  function()
    for i = 1, 10 do
      print('(Routine 1): ' .. i)

      if i == 5 then
        coroutine.yield()
      end
    end
  end
)

local routine_func = function()
  for i = 11, 20 do
    print('\n(Routine 2): ' .. i)
  end
end

local routine2 = coroutine.create(routine_func)

-- coroutine.resume(routine1) -- async
-- coroutine.resume(routine2) -- running and await routine 2
-- coroutine.resume(routine1) -- printout next routine 1.
-- -- Jadi awaitnya di routine1 itu bisa sesuka kita.
-- print(coroutine.status(routine1))


-- Shorts
coroutine.resume(routine1)
coroutine.resume(routine2)

if coroutine.status(routine1) == 'suspended' then
  coroutine.resume(routine1)
end
