#Rodic 
def substrings(str, dict)
  result = {}
  dict.each do |sub|
    freq = str.scan(/#{sub}/i).size
    result[sub] = freq if freq > 0
  end
  result
end

###############################################################
#antoniosb
class Substrings

  def self.count words, dictionary
    raise ArgumentError unless words.is_a?(String) && dictionary.is_a?(Array) && dictionary.size > 0
    dictionary.each_with_object({}) do |dic_word, words_count|
      count = words.scan(/#{dic_word}/i).size
      words_count[dic_word] =  count if count > 0
    end
  end
end

######################################################################
#aclapinpepin
DICTIONARY = ["below","down","go","going","horn","how","howdy","it",
              "i","low","own","part","partner","sit"]

def substrings(str, dict = DICTIONARY)
  results = {}

  str.split.each do |word|
    dict.each do |entry|
      regexp = Regexp.new(entry)
      if word.downcase =~ regexp
        results.keys.include?(entry) ? results[entry] += 1 : results[entry] = 1
      end
    end
  end
  results
end

puts substrings("Howdy partner, sit down! How's it going?")

######################################################################
#Xreid

def substrings(input_text, dictionary)
  result = Hash.new(0)
  # create array from input_text and remove non letter characters.
  words = input_text.split
  words.map! { |word| word.match(/[a-zA-Z]+/).to_s }
  # increment the value of result[substring] by 1 if it is a substring of word.
  words.each do |word|
    dictionary.each do |substring|
      result[substring] += 1 unless word.downcase.match(/#{substring}/).nil?
    end
  end
  result
end

######################################################################
#gb69010p
def substrings(words, dictionary)
	words.downcase! # ensures same case as dictionary
	valid_substrings = Hash.new(0)

	# Iterate through every substring and add the word and frequency to valid_substrings hash
	dictionary.each do |d|
		num_match = words.scan(d).count
		valid_substrings[d] = num_match if num_match > 0 # skip words that aren't found
	end

	valid_substrings
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
p substrings("below", dictionary)
	# => {"below"=>1, "low"=>1}
p substrings("Howdy partner, sit down! How's it going?", dictionary)
	# => {"down"=>1, "how"=>2, "howdy"=>1, "go"=>1, "going"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
