def ordered_vowel_words(str)
	vowel = nil
	idx = 0
	while str.length > idx
		if str[idx] =~ /[aeiou]/
			if vowel == nil || str[idx] > vowel || str[idx] == vowel
				vowel = str[idx]
				else
					return ""
			end
		end
		idx += 1
	end
	str
end
