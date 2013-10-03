
# solution 1, on my own, no rspec
# spiral = [[1,2,3],[4,5,6],[7,8,9]]
# spiral_solution = []
# spiral_solution << spiral.first
# spiral_solution << spiral[1][2]
# spiral_solution << spiral.last.reverse
# spiral_solution << spiral[1].first(2)
# p spiral_solution.flatten!

# solution 2, rspec
spiral_2d_array = [[1,2,3],
		  		   [4,5,6],
		  		   [7,8,9]]	

def spiral(two_d_array)
	spiraled_array = Array.new
	spiraled_array << two_d_array.first
	spiraled_array << two_d_array[1][2]
	spiraled_array << two_d_array.last.reverse
	spiraled_array << two_d_array[1].first(2)
end

p spiral(spiral_2d_array).flatten!