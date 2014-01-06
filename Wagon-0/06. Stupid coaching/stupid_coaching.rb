def stupid_coaching
        puts "Speak!"
        text = gets.chomp

        until text == "I am going to work right now SIR !"
                if text.include? "?"
                        puts "Silly question, just get dressed and go to work!"
                else
                        puts "I don't care son, just get dressed and go to work!"
                end
                puts "Speak again!"
                text = gets.chomp
        end

        puts "OK!"

end

# Calling the method
stupid_coaching