=begin
RIDICULOUS.
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
=end

def wonky_coins(n)
	return 1 if n == 0
	return wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)
end
