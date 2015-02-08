# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
  x = 1
  greatest = nil
  while number1 >= x
    if number1 % x == 0 && number2 % x == 0
      factor = x
      if greatest == nil || factor > greatest
        greatest = factor
      end
    end
    x += 1
  end
  return greatest
end

puts("greatest_common_factor(3, 9) == 3: #{greatest_common_factor(3, 9) == 3}")
puts("greatest_common_factor(16, 24) == 8: #{greatest_common_factor(16, 24) == 8}")
puts("greatest_common_factor(3, 5) == 1: #{greatest_common_factor(3, 5) == 1}")