# the file is yours !
def louchebem(mot)
	mot.split('').each_with_index do |letter, index| 
		if %w(a e i o u y).include? letter
			return "L" + mot[index..-1] + mot[0..index-1] + %w(em ji oc ic uche es).shuffle[0]
		end
	end
end


def louchebem_sentences(phrase)
	phrase.split(" ").each { |mot| print louchebem(mot), " " }
end


puts "Entrer une phrase"
phrase = gets.chomp.downcase

louchebem_sentences(phrase)