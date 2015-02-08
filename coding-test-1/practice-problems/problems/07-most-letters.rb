# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)
  x = 0
  while string.length > x
    if string[x] == "a"
      if string[x + 1] == "z" || string[x + 2] == "z" || string[x + 3] == "z"
        return true
      end
    end
    x += 1
  end
end

puts("nearby_az(\"baz\") == true: #{nearby_az("baz") == true}")
puts("nearby_az(\"abz\") == true: #{nearby_az("abz") == true}")
puts("nearby_az(\"abcz\") == true: #{nearby_az("abcz") == true}")
puts("nearby_az(\"a\") == false: #{nearby_az("a") == false}")
puts("nearby_az(\"z\") == false: #{nearby_az("z") == false}")
puts("nearby_az(\"za\") == false: #{nearby_az("za") == false}")