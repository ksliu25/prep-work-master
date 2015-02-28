def two_sum(arr)
	arr.sort!
#case 0
        zero_count = 0
	arr.each do |zero|
		if zero == 0
			zero_count += 1
		end
	end
	if zero_count >= 2
		return true
	end
	
	arr.each do |elem|
		if arr.include?(-1*elem) && elem != 0
			return true
		else
			return false
		end
	end
end

p two_sum([0, 1, -1])
p two_sum([0, 0])
p two_sum([0, 1, 1])
p two_sum([1, 1, 2, -2])