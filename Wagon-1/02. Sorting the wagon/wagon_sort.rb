def wagon_sort(students_array)
   # your code to sort the array and output students
	puts students_array.sort_by {|name| name.downcase}
end

table = Array.new

while true
	puts "Type a student name:"
	name = gets.chomp
	break if name == ""
	table << name
end

wagon_sort(table)

# your code to interact with the user..