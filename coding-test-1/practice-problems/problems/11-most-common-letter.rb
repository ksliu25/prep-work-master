# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  x = 0
  topcount = 0
  topstring = 0
  while string.length > x
    holder = string[x]
    counter = 0
    y = 0
    while string.length > y
      if holder == string[y]
        counter += 1
      end
        y += 1  
      if topcount == 0 || counter > topcount
        topcount = counter
        topstring = holder
       end
    end
    x += 1
  end
  return [topstring, topcount]
end

puts("most_common_letter(\"abca\") == [\"a\", 2]: #{most_common_letter("abca") == ["a", 2]}")
puts("most_common_letter(\"abbab\") == [\"b\", 3]: #{most_common_letter("abbab") == ["b", 3]}")