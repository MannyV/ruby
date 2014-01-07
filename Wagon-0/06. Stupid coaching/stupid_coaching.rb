def coach_merge(bla, conn)
  t = conn ?  " " : " take the subway and " 
  if bla.end_with? "?"
    puts "Silly question,#{t}just get dressed and go to work!"
  else
    puts "I don't care son,#{t}just get dressed and go to work!"
  end
end

def coach_response(affection, pass) 
  answer = gets.chomp
  puts "I can feel your motivation son!" if answer = answer.upcase
  while true
    break if answer == pass
    coach_merge(answer, affection)
    puts "Speak again!"
    answer = gets.chomp
  end
end

def stupid_coaching
  puts "Speak!"
  coach_response(true, "I am going to work")
  puts "Good Boy!"
  coach_response(false, "Leave me alone")
end

# Calling the method
stupid_coaching