def bubble_sort(arr)
	sorted = false
	x = 0
	if arr.empty? || arr.length == 1
		arr
		else
			while arr.length > x + 1
				if arr[x] > arr[x+1]
					arr[x], arr[x+1] = arr[x+1], arr[x]
					sorted = true
				end
				if x == (arr.length-2) && sorted == true
					sorted = false
					x = -1
				end
				x +=1
			end
			arr
		end
	end
	


p bubble_sort([])
p bubble_sort([1])
p bubble_sort([5,4,3,2,1])