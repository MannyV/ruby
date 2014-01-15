require 'csv'

recipes_array = CSV.read("recipes.csv")
difficulties = { "1" => "Facile", "2" => "Moyenne", "3" => "Difficile" }

puts "We have recipes for:" 
meal_type = []
recipes_array.collect { |recipe| meal_type << recipe[1] }
puts meal_type.uniq

puts "Which category are you interested in?"
chosen_meal_type = gets.chomp
	if meal_type.uniq.include? (chosen_meal_type)
		   puts "Here are the recipes of the category " + chosen_meal_type
		   for i in 0..recipes_array.count-1 do
		   puts "- " + recipes_array[i][0] if recipes_array[i][1] == chosen_meal_type
		end
			else puts "Sorry, there is no such thing in store!"
	end

puts "Now which recipe?"
chosen_recipe = gets.chomp
	for i in 0..recipes_array.count-1 do
		   if recipes_array[i][0] == chosen_recipe
		   puts recipes_array[i][0]
		   puts "************************************"
		   puts "Difficulty : " + difficulties[recipes_array[i][4]]
		   puts "Preparation : " + recipes_array[i][2] + " minutes"
		   puts "Cooking : " + recipes_array[i][3] + " minutes"
		   puts "************************************"
		end
	end

# your code goes here 