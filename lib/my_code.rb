def map(array)
  new_array = []
  array.each do |x|
    new_array.push(yield(x))
  end 
  new_array
end  

def reduce(array, starting_point = 0)
  if starting_point == 0
    accumulator = array[0]
    start_index = 1
  else
    accumulator = starting_point
    start_index = 0
  end
  puts '****************'
  puts accumulator
  for i in start_index...array.length
    x = array[i]
    accumulator = yield(accumulator, x)
  end
  accumulator
end  
