def spiral(two_d_array)
  path = []
  until two_d_array.empty?
    path += two_d_array.delete_at(0)
    two_d_array = two_d_array.transpose.reverse
  end
  path
end