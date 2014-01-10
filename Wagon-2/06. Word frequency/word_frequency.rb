# the file is yours !
def stopwords(word)
        words = "a,able,about,across,after,all,almost,also,am,among,an,and,any,are,as,at,be,because,been,but,by,can,cannot,could,dear,did,do,does,either,else,ever,every,for,from,get,got,had,has,have,he,her,hers,him,his,how,however,i,if,in,into,is,it,its,just,least,let,like,likely,may,me,might,most,must,my,neither,no,nor,not,of,off,often,on,only,or,other,our,own,rather,said,say,says,she,should,since,so,some,than,that,the,their,them,then,there,these,they,this,tis,to,too,twas,us,wants,was,we,were,what,when,where,which,while,who,whom,why,will,with,would,yet,you,your"
        words.split(',').include? word
end

def most_common_words(file, number)
	h = Hash.new(0)
	File.open(file, "r").each_line do |line|
  			line.to_s.split(/\W+/).each do |word| 
  			h.has_key?(word) ? h[word] += 1 : h[word] = 1
  		end
	end
	
	result_table = h.sort_by { |k,v| -v }.to_a
	result_table = result_table.reject { |n| stopwords(n[0]) }

	for i in 0..number-1
        	puts "#{result_table[i][0]} has #{result_table[i][1]} occurrences"
    end
end

most_common_words('source-text.txt', 3) 