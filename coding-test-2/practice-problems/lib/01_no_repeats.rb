def no_repeat?(year)
	s_arr = year.to_s.split("")
	s_arr.length == s_arr.uniq.length
end

	

def no_repeats(year_start, year_end)
	arr = []
	years = (year_start..year_end).to_a
	years.each {|x| arr << x if no_repeat?(x)}
	arr
end
