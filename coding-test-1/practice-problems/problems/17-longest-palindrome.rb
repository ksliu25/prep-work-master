# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# Difficulty: hard.

def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

def longest_palindrome(string)
  x = 0
  longestpalindrome = nil
  while string.length > x
    y = x + 1
    while string.length > y
      if string[x] == string[y] && palindrome?(string[x..y])
        palindrome = string[x..y]
        if longestpalindrome == nil || palindrome.length > longestpalindrome.length 
          longestpalindrome = palindrome
        end
      end
      y += 1
    end
    x += 1
  end
  return longestpalindrome
end

puts("longest_palindrome(\"abcbd\") == \"bcb\": #{longest_palindrome("abcbd") == "bcb"}")
puts("longest_palindrome(\"abba\") == \"abba\": #{longest_palindrome("abba") == "abba"}")
puts("longest_palindrome(\"abcbdeffe\") == \"effe\": #{longest_palindrome("abcbdeffe") == "effe"}")

