# Your code goes here

def spiral(two_d_array)
  array = two_d_array
  results = []

  while array.length > 0
    results << array.shift
    array = array.transpose.reverse
  end

  results.flatten

end