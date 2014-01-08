
def shuffle_method(array)
shuffled_array = []
n = array.count - 1

	for i in 0..n
		index = rand(n - i)
		shuffled_array << array[index]
		array.delete_at(index)
	end

	shuffled_array 
end


def shuffle_method2(array)
        array.sort_by {|x| rand }
end

sorted_array = (1..10).to_a

print shuffle_method(sorted_array)
puts
print shuffle_method2(sorted_array)
puts