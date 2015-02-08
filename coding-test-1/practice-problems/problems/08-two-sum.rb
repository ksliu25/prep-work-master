# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  x = 0
  while nums.length > x
    holder = nums[x]
    y = x + 1
    while nums.length > y
      if holder + nums[y] == 0
        return [x, y]
      end
      y += 1
    end
    x += 1
  end
end

puts("two_sum([1, 3, 5, -3]) == [1, 3]: #{two_sum([1, 3, 5, -3]) == [1, 3]}")
puts("two_sum([1, 3, 5]) == nil: #{two_sum([1, 3, 5]) == nil}")
