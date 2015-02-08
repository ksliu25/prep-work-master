def nearest_larger(arr, idx)
	index = 0
	larger = nil
	while index < arr.length
		if arr[index] > arr[idx] 
			if larger == nil || arr[index] > arr[larger]
				if larger == nil || idx > larger && idx > index
					larger = arr.index(arr[index])
				end
			end
		end
		index += 1
	end
	larger
end
