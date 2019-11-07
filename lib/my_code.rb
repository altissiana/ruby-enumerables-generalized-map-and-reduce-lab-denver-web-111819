def map(array)
  new_array = []
  array.each do |x|
    new_array.push(yield(x))
  end 
  new_array
end  

def reduce(array, starting_point = nil)
  if starting_point
    accumulator = starting_point
    start_index = 0
  else
    accumulator = array[0]
    start_index = 1
  end
  puts '****************'
  puts accumulator
  for i in start_index...array.length
    x = array[i]
    accumulator = yield(accumulator, x)
  end
  accumulator
end  
