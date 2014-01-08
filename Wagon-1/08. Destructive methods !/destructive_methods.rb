# Find an example which illustrates the difference between chosen_method and chosen_method!
# Copy / Paste this example here !

a = [ "d", "a", ["e", "c"], "b" ]

def flatsort(a)
	puts "Flatten! puis sort! :"
	a.flatten!.sort!
	puts a
end

2.times(flatsort(a)) 
# le fait que la méthode bugge la deuxième fois alors qu'elle fonctionne la première montre que a a été changé !