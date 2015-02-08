# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

/def third_greatest(nums)
  def greatest(nums)
  x = 0
  holder = nums[0]
  while nums.length > x 
    if nums[x] > holder
      holder = nums[x]
      x += 1
    else
      x += 1
    end
  end 
    return holder
  end
  y = 0
  while 3 > y
    result = greatest(nums)
    z = nums.pop(result.to_i)
    y += 1
  end
  return result
end
/

def third_greatest(nums)
  first = 0
  second = 0
  third = 0
  x = 0
  while nums.length > x
    holder = nums[x]
    if first == 0 || holder > first
      third = second
      second = first
      first = holder
    elsif second == 0 || holder > second
      third = second
      second = holder
    elsif third == 0 || holder > third
      third = holder
    end
    x += 1
end
  return third
end

puts("third_greatest([5, 3, 7]) == 3: #{third_greatest([5, 3, 7]) == 3}")
puts("third_greatest([5, 3, 7, 4]) == 4: #{third_greatest([5, 3, 7, 4]) == 4}")
puts("third_greatest([2, 3, 7, 4]) == 3: #{third_greatest([2, 3, 7, 4]) == 3}")
