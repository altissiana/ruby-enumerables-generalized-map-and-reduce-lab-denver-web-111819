def map(array)
  new_array = []
  array.each do |x|
    new_array.push(yield(x))
  end 
  new_array
end  

def reduce(array, starting_point = 0)
  total = 0
  array.each do |x|
    total = total + yield(starting_point, x)
  end
  total
end  
