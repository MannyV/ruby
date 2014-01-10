def anagrams?(a_string, another_string)
   a_string.delete(' ').downcase.chars.to_a.sort == another_string.delete(' ').downcase.chars.to_a.sort 
end

def anagrams_on_steroids?( a_string, another_string )
	h = Hash.new(0)
  	a_string.delete(' ').downcase.chars.to_a.each { |l| h[l] += 1 }
  	another_string.delete(' ').downcase.chars.to_a.each { |l| h[l] -= 1 }
  	h.values.all? { |k| k == 0}
end

# complexity = ?
puts anagrams? "Monica Lewinsky", "Nice silky woman" # => true 

# complexity = ?
puts anagrams_on_steroids? "Monica Lewinsky", "Nice silky woman" # => true