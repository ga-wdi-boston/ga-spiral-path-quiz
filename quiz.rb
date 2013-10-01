def spiral(two_d_array)
  
  path = []
  spin = two_d_array.length + two_d_array[0].length - 1

  spin.times do
    path << two_d_array.delete_at(0)
    two_d_array = two_d_array.transpose.reverse
  end

  path.flatten.compact
end