def old_roman_numeral(an_integer)
  puts an_integer + " donne en chiffres romains anciens : " 
  tab_roman = Array.new
  d_m, r_m = an_integer.to_i.divmod(1000)
  d_m.times { print "M" }
  d_d, r_d = r_m.to_i.divmod(500)
  d_d.times { print "D" }
  d_c, r_c = r_d.to_i.divmod(100)
  d_c.times { print "C" }
  d_l, r_l = r_c.to_i.divmod(50)
  d_l.times { print "L" }
  d_x, r_x = r_l.to_i.divmod(10)
  d_x.times { print "X" }
  d_v, r_v = r_x.to_i.divmod(5)
  d_v.times { print "V" }
  r_v.times { print "I" }
end

def new_roman_numeral(an_integer)
  puts an_integer + " donne en chiffres romains nouveaux : " 
  tab_roman = Array.new
  d_m, r_m = an_integer.to_i.divmod(1000)
  d_m <= 3 ? d_m.times { print "M" } : print("IV")
  
  d_d, r_d = r_m.to_i.divmod(500)
  d_d.times { print "D" }

  d_c, r_c = r_d.to_i.divmod(100)
  d_c <= 3 ? d_c.times { print "C" } : print("CD")

  d_l, r_l = r_c.to_i.divmod(50)
  d_l.times { print "L" }

  d_x, r_x = r_l.to_i.divmod(10)
  d_x <= 3 ? d_x.times { print "X" } : print("XD")

  d_v, r_v = r_x.to_i.divmod(5)
  d_v.times { print "V" }

  r_v <= 3 ? r_v.times { print "I" } : print("IV")
end

puts "My nice roman numeral tests"
old_roman_numeral(ARGV[0])
new_roman_numeral(ARGV[0])