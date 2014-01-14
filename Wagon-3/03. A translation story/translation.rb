$strings = {
 home: {
   intro: {
     en: 'Welcome on Le Wagon',
     fr: 'Bienvenue sur Le Wagon'
   },
   content: {
     explanation: {
       en: 'This is an interesting exercise',
       fr: 'C\'est un exercice interessant',
       de: 'Es ist eine interesante abung'
     },
     goodbye: {
       en: 'Goodbye',
       fr: 'Au revoir',
       es: 'Adios'
     }
   }
 }
}

def getTranslation(a_string, a_language = :en )
  h = $strings
  lower_path = a_string
  (a_string.count('.') + 1).times do
    upper_title, lower_path = lower_path.split('.', 2)
    h[upper_title.to_sym].nil? ? '' : h = h[upper_title.to_sym]
    end
    return h[a_language.to_sym].nil? ? h[:en] : h[a_language.to_sym]
end

def getTranslation_recursive(a_string, a_language = :en ) # NON-WORKING NEEDS CODE REVIEW !!
  h = $strings
  a_string.split('.').each do |path|
    if h[path.to_sym].is_a?(Hash) 
       h = h[path.to_sym]
       getTranslation(path, a_language = :en)
    else 
       return h[a_language.to_sym].nil? ? h[:en] : h[a_language.to_sym]
    end
  end
end

# testing your program 
# puts getTranslation_recursive('home.intro', 'fr')

puts getTranslation('home.intro', 'fr') 
puts getTranslation('home.intro', 'es')
puts getTranslation('home.content.goodbye') 
puts getTranslation('unvalid.path','en')

# puts getTranslation_recursive('home.intro', 'fr') 
# puts getTranslation_recursive('home.intro', 'es')
# puts getTranslation_recursive('home.content.goodbye') 
# puts getTranslation_recursive('unvalid.path','en')