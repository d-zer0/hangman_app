class Hangman
	def initialize
		@word = "Secret"
		@guessed_letters = []
	end

	def guessed_letters
		@guessed_letters
	end

	def word
		@word
	end

	def check(guess)
		if guess.length == 1
			if @word.include? "#{guess}"
				"The word contains #{guess}".
			else
				"The word does not include #{guess}"
			end
			@guessed_letters << guess
		elsif guess.length > 1
			if guess == @word
				"Correct! The word was: #{word}"
			else
				"Sorry, wrong answer. Keep trying."
			end
		else
			"Sorry, you didn't submit anything.  Try guessing a letter or a whole word."
		end
	end
end