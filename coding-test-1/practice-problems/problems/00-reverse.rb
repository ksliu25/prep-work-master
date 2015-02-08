# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Difficulty: easy.

def reverse0(string)
  #cop out method below
  #string.reverse
  result = ""
  reverse = string.length - 1
  while reverse >= 0
    result += string[reverse]
    reverse -= 1
  end
  return result
end

def reverse(string)
  result = ""
  idx = 0
  while string.length > idx
    result = string[idx] + result
    idx = idx + 1
  end
  return result
end

puts reverse("Hello")


puts("reverse(\"abc\") == \"cba\": #{reverse("abc") == "cba"}")
puts("reverse(\"a\") == \"a\": #{reverse("a") == "a"}")
puts("reverse(\"\") == \"\": #{reverse("") == ""}")
