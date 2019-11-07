def map(array)
  new_array = []
  array.each do |x|
    new_array.push(yield(x))
  end 
  new_array
end  

def reduce(array, starting_point = 0)
  accumulator = yield(0, starting_point)
  puts '****************'
  puts accumulator
  array.each do |x|
    accumulator = yield(accumulator, x)
  end
  accumulator
end  
