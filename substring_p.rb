# Project 3 in theodinproject
# implement a method #substring that takes a
# word as the first argument then an array of 
# valid substrings (your dictionary) as the
# second argument. It should return a hash 
# listing each substring (case insensitive) 
# that was found in the original string and 
# how many times it was found.

def substrings(str, vals)
	keeper = Hash.new(0) # create hash to use to collect repeated values
	str = str.dup.downcase.scan(/\w+/).join.split('') # making an array of the input string
	str.each_index do |i| # going through every index first
		(str.length - i).times do |j| # based on the length of input string minus index
			word = str[ i, str.length - i - j].join # find every iteration of the input string starting at index
			keeper[word] += 1 if vals.include?(word) # add to value if key found
		end
	end
	return keeper.select {|k,v| v > 0 } # this hash still has all keys but only returns the values greater than 0
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
p substrings("below", dictionary)
