# Program: Hangman board game
# Author: Chris Manna

class Board
	def initialize()
		@word_list = Array.new()
	end
	
	def choose_next_word()
		word_poss = nil
		File.open("5desk.txt") do |f|
			lines = f.readlines
			while true
				word_poss = lines[rand(lines.size)].chomp
				if word_poss.length.between?(6,12) && !(@word_list.include?(word_poss))
					@word_list << word_poss
					break
				end
			end
		end
		@word_list[-1]
	end
	
	def display
		len = @word_list[-1].length
		display_arr = Array.new(len,"_").join
	end
	
	def display_all_guesses
		# all letters guessed
	end
end

####################################
class Player

	def initialize()
		@val
 	end
		
	def set_guess()
		@val = gets.chomp.downcase
	end
end

####################################
class Referee

	def initialize()
		@message = "Please enter your guess"
		h = Hash.new()
		@play = Player.new()
	end
	
	def prompt_for_guess
		puts @message
	end
	
	def directions_prompt
		"""
Rules: 
Enter one letter or as your guess or...
'1' to guess the word
'*' to go to the start menu
"""
	end
	def start_menu_prompt
		"""
Press...
'1' to save and quit
'0' to quit load a new game
'*' to quit without saving
"""
	end
	
	def inspect_guess
		puts directions_prompt
		case @play.set_guess
		when '1' then puts "guess_word"
		when '*' then puts start_menu
		when /^[a-z]$/ then puts "received"
		else 
			puts "Please re-enter input"
			inspect_guess
		end
	end
	
	def start_menu
		puts start_menu_prompt
	end
end

r = Referee.new()
p r.inspect_guess
