def translater(ord)
	bokstaver = ord.split('')
	startbokstav = bokstaver[0]
	if sjekkvokal(startbokstav) == true
		svar = bokstaver.join + "ay"
	else
		start = bokstaver.index{|x| sjekkvokal(x)}
		if bokstaver[start-1] == "q"
			lengde = bokstaver.length
			svar = bokstaver[start+1..lengde] + bokstaver[0...start+1]
			svar.push("ay")
			svar.join
		else
		lengde = bokstaver.length
		svar = bokstaver[start..lengde] + bokstaver[0...start]
		svar.push("ay")
		svar.join
		end 
	end
end

def sjekkvokal(bokstav)
	vokaler = ["a", "e", "u", "i", "o", "y"]
	if vokaler.include?(bokstav)
		true
	end
end

def sjekkonsonant(bokstav)
	vokaler = ["a", "e", "u", "i", "o", "y"]
	if vokaler.include?(bokstav)
		false
	end
end

def translate(setning)
	firstword = setning.split(' ')
	if firstword.length == 1
		translater(firstword[0])
	elsif firstword.length == 2
		translater(firstword[0]) + " " + translater(firstword[1]) 
	elsif firstword.length == 3
		translater(firstword[0]) + " " + translater(firstword[1]) + " " + translater(firstword[2])
	elsif firstword.length == 4
		translater(firstword[0]) + " " + translater(firstword[1]) + " " + translater(firstword[2]) + " " + translater(firstword[3])
	end
end

