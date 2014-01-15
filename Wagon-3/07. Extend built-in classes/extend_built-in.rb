def factorial(an_integer)
	n = 1
	(2..an_integer).each { |k| n *= k } 
	n
end

class Integer
	def factorial
		n = 1
		(2..self).each { |k| n *= k } 
		n
	end
end

puts factorial(6)
puts 6.factorial

class Array
	def shuffle_n_first(n)
		self[0..n-1].shuffle + self.drop(n)
	end
end

puts [1, 2, 3, 4, 5].shuffle_n_first(3)