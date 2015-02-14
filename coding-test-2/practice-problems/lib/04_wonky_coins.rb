
def wonky_coins(n)
	return 0 if n == 0
	arr = []
	arr << n/2 << n/3 << n/4
	#base case?
	if n != 0
		arr.map{|x| wonky_coins(x)}
		else
	

end

p wonky_coins(5)

=begin
def wonky_coins(n)
	return 1 if n == 0
	return wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)
end
=end