# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  sentence = sentence.split
  result = sentence[0]
  x = 0
  while sentence.length > x
    if result.length < sentence[x].length
      result = sentence[x]
    end
    x += 1
  end
  return result
end

puts("longest_word(\"short longest\") == \"longest\": #{longest_word("short longest") == "longest"}")
puts("longest_word(\"one\") == \"one\": #{longest_word("one") == "one"}")
puts("longest_word(\"abc def abcde\") == \"abcde\": #{longest_word("abc def abcde") == "abcde"}")
