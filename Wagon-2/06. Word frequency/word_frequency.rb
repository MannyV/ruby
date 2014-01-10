# the file is yours !

def most_common_words(file, number)
	h = Hash.new(0)
	File.open(file, "r").each_line do |line|
  			line.to_s.split(/\W+/).each do |word| 
  			h.has_key?(word) ? h[word] += 1 : h[word] = 1
  		end
	end
	h1 = h.sort_by { |k,v| -v } 
	result = h1.to_a
	for i in 0..number-1 
        puts result[i][0] + " has #{result[i][1]} occurrences"
    end
end

puts most_common_words('source-text.txt', 3) 