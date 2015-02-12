def wonky_coins(n)
	arr = []
	arr << n/2 << n/3 << n/4
	#base case?
	if arr.all?{|coin| coin == 0}
		return arr.flatten.length
		else
		arr.map{|x| wonky_coins(x)}
	end
end

p wonky_coins(5)