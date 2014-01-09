def anagrams?(a_string, another_string)
  a_string.delete(' ').downcase.chars.to_a.sort == another_string.delete(' ').downcase.chars.to_a.sort 
end

# def anagrams_on_steroids?( a_string, another_string )
#   a_string.length != another_string.length ? "Ce ne sont pas des anagrammes" : do 
#   	a_string.delete(' ').downcase.chars.to_a.select.each_with_object(Hash.new []) do |word, hash|

#   		end
#   	end
# end

# complexity = ?
puts anagrams? "Monica Lewinsky", "Nice silky woman" # => true 

# complexity = ?
# puts anagrams_on_steroids? "Monica Lewinsky", "Nice silky woman" # => true