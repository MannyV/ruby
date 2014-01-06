def age_in_days(day, month, year)
  # your code goes here !
(Time.now - Time.new(year, month, day))/83400
end
# Testing your code
puts age_in_days(6, 11, 1985)