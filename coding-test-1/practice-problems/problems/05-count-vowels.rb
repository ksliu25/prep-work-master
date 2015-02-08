# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

def count_vowels(string)
  x = 0
  vowelcount = 0
  while string.length > x
    it = string[x]
    if it == "a" || it == "e" || it == "i" || it == "o" || it == "u"
      vowelcount += 1
    end
    x += 1
  end
  return vowelcount
end

puts("count_vowels(\"abcd\") == 1: #{count_vowels("abcd") == 1}")
puts("count_vowels(\"color\") == 2: #{count_vowels("color") == 2}")
puts("count_vowels(\"colour\") == 3: #{count_vowels("colour") == 3}")
puts("count_vowels(\"cecilia\") == 4: #{count_vowels("cecilia") == 4}")