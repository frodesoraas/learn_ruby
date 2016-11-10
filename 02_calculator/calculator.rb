#write your code here
def add (num1, num2)
	num1 + num2
end

def subtract (num1, num2)
	num1 - num2
end

def sum (a)
	sum = 0
	a.each do |i|
		sum = sum + i
	end
	sum = sum.to_i
end

def mul(tall)
	result = 1
	tall.each do |n|
		result = result * n
	end
	result	
end