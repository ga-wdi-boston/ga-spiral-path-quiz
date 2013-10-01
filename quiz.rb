
spiral = [[1,2,3],[4,5,6],[7,8,9]]
spiral_solution = []
spiral_solution << spiral.first
spiral_solution << spiral[1][2]
spiral_solution << spiral.last.reverse
spiral_solution << spiral[1].first(2)
p spiral_solution.flatten

	
