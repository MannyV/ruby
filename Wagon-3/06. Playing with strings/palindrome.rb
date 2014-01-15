def palindrome?(a_string)
  a_string.gsub(/\s/, "").gsub(/[\W]/, "").downcase == a_string.gsub(/\s/, "").gsub(/[\W]/, "").downcase.reverse ? true : false
end

  
# Testing palindrome? function
puts "#{palindrome?("A man, a plan, a canal -- Panama")}" #=> true
puts "#{palindrome?("Madam, I'm Adam!")}" # => true
puts "#{palindrome?("Abracadabra")}" # => false