=begin
A handful of words have their letters in alphabetical order, 
that is nowhere in the word do you change direction in the 
word if you were to scan along the English alphabet. An 
example is the word "almost", which has its letters in 
alphabetical order. Your challenge today is to write a program
that can determine if the letters in a word are in alphabetical order.
As a bonus, see if you can find words spelled in reverse alphebatical order.
=end

def alpha_word(str)
	if str == str.downcase.split(//).sort.join
		p "#{str} IN ORDER"
	elsif str.split(//).reverse.join == str.split(//).reverse.sort.join
		p "#{str} IN REVERSE ORDER"
	else
		p "#{str} NOT IN ORDER"
	end
end

alpha_word("almost") # returns true
alpha_word("billowy") # returns false
alpha_word("biopsy")
alpha_word("chinos")
alpha_word("defaced")
alpha_word("chintz")
alpha_word("sponged")
alpha_word("bijoux")
alpha_word("abhors")
alpha_word("fiddle")
alpha_word("begins")
alpha_word("chimps")
alpha_word("wronged")
