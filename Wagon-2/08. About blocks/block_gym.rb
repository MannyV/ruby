# Recoding inject iterator

def inject(array, initial_value)
  array.each { |n| initial_value = yield(initial_value, n) }
  initial_value
end

puts inject(1..100, 0) { |initial_value, element| element + initial_value } == 5050 # true

# Block timer

def timer_for
        start_time = Time.now
        yield
        print "Took you " + (Time.now - start_time).to_s + " seconds"
end

timer_for do 
  (1..100).each { |i| (1..100000).to_a.shuffle.sort }
end

# Should return around 2-3 seconds