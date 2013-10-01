require 'pry'

# array = [[11, 12, 13, 14, 15, 16],
#          [24, 25, 26, 27, 28, 17],
#          [23, 22, 21, 20, 19, 18]]

# array = [[11, 12, 13, 14, 15, 16, 17],
#          [26, 27, 28, 29, 30, 31, 18],
#          [25, 24, 23, 22, 21, 20, 19]]

array = [[11, 12, 13, 14, 15],
         [24, 25, 26, 27, 16],
         [23, 30, 29, 28, 17],
         [22, 21, 20, 19, 18]]

spiral_array =[]

max_value = array.flatten.max

m_dimension = (array.length.to_i-1)
n_dimension = (array[0].length.to_i-1)

m_counter = 0
n_counter = 0
nx_counter = 0
mx_counter = 0

while n_dimension > 0 && m_dimension > 0

  while n_counter < n_dimension
    break if array[m_counter][n_counter] >= max_value
    spiral_array << array[m_counter][n_counter]
    n_counter += 1
  end

  while m_counter < m_dimension
    break if array[m_counter][n_counter] >= max_value 
    spiral_array << array[m_counter][n_counter]
    m_counter += 1
  end

  n_dimension -= 1
  m_dimension -= 1

# binding pry
  while n_counter >= nx_counter
    break if array[m_counter][n_counter] >= max_value
    spiral_array << array[m_counter][n_counter]
    break if n_counter == nx_counter
      n_counter -= 1
  end

  nx_counter += 1
  mx_counter += 1
  m_counter -= 1

  while m_counter >= mx_counter 
    break if array[m_counter][n_counter] >= max_value
    spiral_array << array[m_counter][n_counter]
    break if m_counter == mx_counter
      m_counter -= 1
  end


n_counter += 1
nx_counter += 1

# binding pry
end
#for git
puts spiral_array