def shuffle_word(a_word)
  # Ruby fonction to play to "Des chiffres et des lettres.."
  return a_word.upcase.chars.to_a.shuffle
  
end


def liste_diviseurs(nombre)
	(2..nombre-1).select { |k| nombre % k == 0 }
end

def quote_prime_numbers(n)
  tableau_des_premiers = (1..n).find_all {	|i| liste_diviseurs(i).count == 0 }
  tableau_des_premiers.map{ |prime_num| "#{prime_num} is prime"}
end


puts shuffle_word("nabuchodonosor")
puts quote_prime_numbers(30)