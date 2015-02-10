def vowels?(str)
	vowel = nil
	idx = 0
	while str.length > idx
		if str[idx] =~ /[aeiou]/
			if vowel == nil || str[idx] > vowel || str[idx] == vowel
				vowel = str[idx]
				else
					return true
			end
		end
		idx += 1
	end
	false
end

def ordered_vowel_words(str)
	arr = str.split(" ")
	arr.delete_if{|x| vowels?(x)}
	arr.join(" ")
end

