def spiral(two_d_array)
  return two_d_array.flatten! if two_d_array.length < 2
  
  path = []
  spin = two_d_array.length + two_d_array[0].length - 1

  spin.times do
    path << two_d_array.delete_at(0)
    two_d_array = two_d_array.transpose.reverse
  end

  path.flatten!
end