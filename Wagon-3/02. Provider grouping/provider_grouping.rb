def group_mails(emails) 
 h = Hash.new[0]
  emails.each do |full_adress| 
  	parsed_email = /(\w+).(\w+)@(\w+)/.match(full_adress)
  	parsed_email[3]


end

users_emails = %w( bob@yahoo.fr 
                   roger57@hotmail.fr 
                   bigbox@yahoo.fr 
                   boris@lewagon.org 
                   monsieur.olivier@gmail.com 
                   monsieur.mack@gmail.com )
                   

puts group_mails( users_emails ) 

# => {"yahoo" => ["bob@yahoo.fr", "bigbox@yahoo.fr"], 
#     "hotmail" => ["roger57@hotmail.fr"], 
#     "lewagon" => ["boris@lewagon.org"], 
#     "gmail" => ["monsieur.olivier@gmail.com", 
#     "monsieur.mack@gmail.com"]}
