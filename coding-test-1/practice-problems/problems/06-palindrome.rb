# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

def palindrome?(string)
  idx = 0
  while string.length > idx
    if string[idx] != string[(string.length - 1) - idx]
      return false
    end
    idx = idx + 1
  end
  return true
end
    
puts("palindrome?(\"abc\") == false: #{palindrome?("abc") == false}")
puts("palindrome?(\"abcba\") == true: #{palindrome?("abcba") == true}")
puts("palindrome?(\"z\") == true: #{palindrome?("z") == true}")
