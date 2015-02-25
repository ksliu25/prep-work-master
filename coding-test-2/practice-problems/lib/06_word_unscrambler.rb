def word_unscrambler(str, words)
	unscrambled = []
	words.each do |word|
		if word.split("").sort == str.split("").sort
			unscrambled << word
		end
	end
	unscrambled
end
