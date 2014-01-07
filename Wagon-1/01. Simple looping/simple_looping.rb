# The objective is to create a function that computes the sum of the integers from a min value to a max value

def sum(min,max)
  # your code here
  sum = 0
  for i in min..max
  	sum += i
  end
  return sum # Sans cela, sum est un Range et non un FixNum
end

def sum2(min,max)
  # your code here
  sum2 = 0
  while min <= max do
  	sum2 += min
  	min += 1
  end
  return sum2 # Sans cela, sum est un Range et non un FixNum
end

def sum3(min,max)
	(min..max).reduce(:+)
end

# Testing your code

min = 1
max = 100
sum = sum(1,100)

puts sum.class
puts 5050.class

puts sum == 5050 # => true
 
 ###

min = 1
max = 100
sum2 = sum2(1,100)

puts sum2.class
puts 5050.class

puts sum2 == 5050 # => true

 ###
 
sum3 = sum3(1,100)
puts sum3 == 5050 # => true
