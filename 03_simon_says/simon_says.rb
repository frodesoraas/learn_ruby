#write your code here
def echo(kommando)
	kommando
end

def shout(kommando)
	kommando.upcase
end

def repeat (kommando, antall = 2)

	"#{kommando} " * (antall-1) + kommando.chomp(" ")
end

def start_of_word(ord, antall)
	ord[0..antall-1]
end

def first_word(setning)
	mellomrom = setning.index(" ")
	ord = setning[0..mellomrom-1]
	ord
end

def titleize(setning)
	svar = []
	delteord = setning.split
	delteord.each_with_index do |item, index|
		if item.length > 4 || index == 0
			svar.push(item.capitalize)
		else
			svar.push(item)
		end
	end
	svar.join(" ")
end
