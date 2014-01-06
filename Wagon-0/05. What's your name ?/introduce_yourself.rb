# your code goes here, introduce yourself !
puts 'What\'s your first name?'
first_name = gets.chomp

puts 'What\'s your middle name?'
middle_name = gets.chomp

puts 'What\'s your last name?'
last_name = gets.chomp

puts "Hello, "+first_name+" "+middle_name+" "+last_name+"!"
puts "Hello, #{first_name} #{middle_name} #{last_name} !"

length = first_name.length + middle_name.length + last_name.length
puts "You have #{length} characters in your name"

puts "Merci !"  unless first_name.empty? || middle_name.empty? || last_name.empty?