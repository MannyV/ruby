require 'csv'

recipes_array = CSV.read("recipes.csv")
meal_array = []
puts "We have recipes for :" 

for i in 0..recipes_array.count-1 do 
	meal_array << recipes_array[i]
end

puts meal_array
# your code goes here 