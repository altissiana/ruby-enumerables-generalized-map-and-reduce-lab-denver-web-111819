def map(array)
  new_array = []
  array.each do |x|
    new_array.push(yield(x))
  end 
  new_array
end  

def reduce(array, starting_point = 0)
  total = starting_point
  array.each do |x|
    total = yield(total, x)
  end
  total
end  
