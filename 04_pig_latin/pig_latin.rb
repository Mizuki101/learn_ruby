#write your code here

def translate(string)
	string = string.split(" ")

	vowels = %w(a i u e o)
	exception = "q"
	sentence = []	
	string.each_with_index do |str|
	 consonant = 0
	 str.split("").each do |char|
 	  if char == exception 
	  ignore_u = true
	  end
	 unless vowels.include?(char) 
		 consonant += 1
		 if ignore_u == true
			 consonant += 1
			 ignore_u == false
			 break
		 end
	 else
		 break
	 end
	 end


	 if consonant == 0 
	  sentence << str + "ay"
         elsif consonant > 0
	  sentence << str[consonant..-1] + str[0..consonant-1] + "ay"
	 end
	 
	end

	return sentence.join(" ")
end

