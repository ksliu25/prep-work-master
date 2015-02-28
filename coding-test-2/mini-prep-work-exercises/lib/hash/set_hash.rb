def add_el (hash = {}, elem)
	if hash.empty? 
		hash[elem] = true
		elsif hash.include?(elem)
			hash
		end
	end
	
def remove_el (hash, elem)
	hash.delete(elem) if hash.has_key?(elem)
end

def list_els (hash)
	hash.keys
end

		