

def spiral(array)

# read_array
array_holder = array

spial_array = []

# determine array_holder size N x M
n = array_holder[0].length
m = array_holder.length

puts "#{n}"
puts "#{m}"

# get first row (0)
spiral_array << array_holder[0]



# get last column ( for 0 to n-1)

# get last row
# 	reverse last row

# get first row
# 	reverse first row
# 	delete last element 




end

# test_array = []
test_array = [[1,2,3,4,5],  [8,9,4,7,9],  [7,6,5,3,5]]

spiral(test_array)





# Write a function called "spiral" that takes an NxM array as input
# and returns a "spiral" path through the array, starting in the
# upper-left corner and moving clockwise. Use the language of your
# choice.

# For example (in Ruby), if

# array = [[1,2,3],          [8,9,4],          [7,6,5]] then

# spiral(array) => [1,2,3,4,5,6,7,8,9] It should work on any NxM
# array, so don't assume the input is a square array. However, every
# row will have the same number of elements.
