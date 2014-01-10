
# Your code goes here
def spiral(array, return_array)
  # local variables
  height = array.count
  width = array[0].count

  # four movements done over and over again
  width.times {return_array << array[0].shift}
  height.times {|i| return_array << array[i].pop}
  width.times {return_array << array[-1].pop }
  height.times {|i| return_array << array[-i].shift}

  # clean up array and return_array
  array.map!{|e| e == [] ? nil : e }.compact!
  return_array.compact!

  # shove results from recursion into return_array
  return_array << spiral(array, return_array) if array.count > 0

  # clean up and return the goods
  return_array.compact!
end

array = [[1,2,3,4,5],
         [12,13,14,15,6],
         [11,10,9,8,7]]

emtpy_array = []

p spiral(array, emtpy_array)
