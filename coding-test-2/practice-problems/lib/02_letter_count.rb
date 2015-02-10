=begin

I had to look at the solution, but I am happy to learn 
how to use each_char and unless for the first time!

=end


def letter_count(str)
	letter_hash = {}
	
	str.each_char do |char|
		next if char == " "
		letter_hash[char] = 0 unless letter_hash.include?(char)
		letter_hash[char] += 1
	end
	letter_hash
	
end
