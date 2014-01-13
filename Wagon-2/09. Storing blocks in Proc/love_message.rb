def tell(who, &message_block)
        puts "#{who}, " + message_block.call + "!"
end

def tell_mum(&message_block)
		puts "Mum, " + message_block.call + "!"
end


tell_mum {"I love you"} # => "mum, I love you !"


# Now create the block object by yourself
def tell_block(who, message_blk)
        puts "#{who}, " + message_blk.call + "!"
end

def tell_mum_block(message_blk)
        puts "Mum, " + message_blk.call + "!"
end

love_block = Proc.new {"I love you"}

tell_mum_block(love_block) # => "mum, I love you !"