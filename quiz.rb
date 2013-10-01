# Your code goes here
require 'pry'

array = [[1,2,3],[4,5,6],[7,8,9]]
array_length = array.length

# binding.pry

new_array = []
new_array << array[0]

counter = 1

while counter < array.length
	array_component = array[counter]
	new_array << array_component[-1]
	counter += 1
end

new_array << array[-1].reverse

counter2 = array_length - 1

while counter2 > 0
	array_component = array[counter2]
	component_length = array_component.length
	array_component = array.slice(component_length)
	new_array << array_component
	counter -= 1
end

new_array.flatten!


binding.pry
