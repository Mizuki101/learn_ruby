#write your code here
module TitleMake
def titleize(string)
	ans  = string.split(" ")
	little = %w(and or the over to a an of in at on)
	ans.each_with_index do |i,index|
		ignore = false
		little.each do |lit|
		if i == lit then
			ignore = true
			break
		end
		end

		if index > 0 && ignore == true 
		next 
		else
		ans[index] = i.capitalize
		end
		ignore = false
	end
	return ans.join(" ")

end
end
