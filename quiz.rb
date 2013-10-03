# Your code goes here
def spiral(arr)
  result = []
  4.times { |x|
    result[x] = []
    4.times { |y|
      result[x][y] = arr[y][3 - x]
    }
  }

  result
end

arr = []
arr[0] = [1,2,3,4]
arr[1] = [5,6,7,8]
arr[2] = [9,0,1,2]
arr[3] = [3,4,5,6]

def print_arr(arr)
  4.times { |y|
    4.times { |x|
      print "#{arr[x][y]} "
    }
    puts ""
  }
end

print_arr(arr)
puts ""
print_arr(spiral(arr))