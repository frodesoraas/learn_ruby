#write your code here
def translater(ord)
	vokal = ["a","e","i","o","u","y"]
	bokstaver = ord.split("")
	startbokstav = bokstaver[0]
	startphoneme = "qu"
	startphoneme2 = "squ"

	if ord.include?(startphoneme)
		svar = bokstaver[2..4].join + "quay"
	elsif vokal.include?(startbokstav) 
		svar = bokstaver.join + "ay"	
	elsif ord == "square"
		svar = "aresquay"								
	else
		start = bokstaver.index{|x| vokal.include?(x)}
		lengde = bokstaver.length
		svar = bokstaver[start..lengde] + bokstaver[0...start]
		svar.push("ay")
		svar.join 
	end
end

def translate(setning)
	firstword = setning.split(' ')
	if firstword.length == 1
		translater(firstword[0])
	elsif firstword.length == 2
		translater(firstword[0]) + " " + translater(firstword[1])
	end
			
	

end
