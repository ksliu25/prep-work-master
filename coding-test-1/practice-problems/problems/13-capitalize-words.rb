# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

def capitalize_words(string)
  string = string.split
  idx1 = 0
  while string.length > idx1
    string[idx1][0] = string[idx1][0].upcase
    idx1 += 1
  end
  return string.join(" ")
end

puts(
  "capitalize_words(\"this is a sentence\") == \"This Is A Sentence\": " +
  (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
)
puts(
  "capitalize_words(\"mike bloomfield\") == \"Mike Bloomfield\": " +
  (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
)