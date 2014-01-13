def parse_mail(email)
  jokes = {"gmail" => "you're an average but modern person", "lewagon" => "you're skilled and capable", "wanadoo" => "you're old"}
  
  parsed_email = /(\w+).(\w+)@(\w+)/.match(email)
  global_name = email[/[^@]+/]

  name = (parsed_email[1].empty? ? global_name : (parsed_email[1] + " " + parsed_email[2])).capitalize
  greeting = (jokes[parsed_email[3]].empty? ? "unfortunately we do not know your provider buddy" : jokes[parsed_email[3]] )

  return "Bonjour " + name + ", " + greeting + "!"
end

puts parse_mail("boris.paillard@lewagon.org") # => "Well done boris, you're skilled and capable"


