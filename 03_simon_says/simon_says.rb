#write your code here
def echo(string)
	p string
end

def shout(string)
	p string.upcase
end

def repeat(string,n=2)
	if n < 3 then
	p string + " " + string
	else
	 x = string
	 (n-1).times do
	 x = x + " " + string
	 end
	 p x
	end

end

def start_of_word(string,n=1)
	array = string.split("")
	ans = array[0..n-1].join
	p ans
end

def first_word(string)
	ans = string.split(" ")
	p ans.first
end

def titleize(string)
	ans  = string.split(" ")
	little = %w(and or the over to a an of)
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
