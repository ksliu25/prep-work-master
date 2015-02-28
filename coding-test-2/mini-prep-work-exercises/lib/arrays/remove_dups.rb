class Array
    def my_uniq
	    uniq_arr = []
	    self.each do |elem|
		    uniq_arr << elem unless uniq_arr.include?(elem)
	    end
	    uniq_arr
    end
end

p [1, 2, 1, 3, 3].my_uniq