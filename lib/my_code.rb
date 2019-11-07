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
  else
    accumulator = starting_point
  end
  puts '****************'
  puts accumulator
  array.each do |x|
    accumulator = yield(accumulator, x)
  end
  accumulator
end  
