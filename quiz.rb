# Your code goes here

require 'pry'


array = [[11, 12, 13, 14, 15, 16],
         [24, 25, 26, 27, 28, 17],
         [23, 22, 21, 20, 19, 18]]

# array = [[11, 12, 13, 14, 15, 16, 17],
#          [26, 27, 28, 29, 30, 31, 18],
#          [25, 24, 23, 22, 21, 20, 19]]

# array = [[11, 12, 13, 14, 15],
#          [24, 25, 26, 27, 16],
#          [23, 30, 29, 28, 17],
#          [22, 21, 20, 19, 18]]

# array = [
#    		[1, 2, 3, 4, 5, 6],
# 		[14, 15, 16, 17, 18, 7], 
# 		[13, 12, 11, 10, 9, 8]]


def spiral(arr)
  spiral = []

   while arr[0].length > 0

    arr.first.length.times do 
      spiral << arr.first.shift
    end

    arr.shift

    arr.each do |x|
      spiral << x.pop
    end

    arr.last.length.times do 
      spiral << arr.last.pop
    end
    
    arr.pop

    l = arr.length
    (l-1).downto(0) do |x|
      spiral << arr[x].shift
    end
   
    return spiral

  end

end



finished_array = spiral(array)
puts finished_array.inspect

