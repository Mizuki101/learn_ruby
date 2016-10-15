#write your code here

def add(a,b)
	x = a + b
	p x
end

def subtract(a,b)
	x = a - b
	p x
end

def sum (num)
	if num == nil || num.size == 0
		p 0
	else
	p num.inject(:+)
end
end

