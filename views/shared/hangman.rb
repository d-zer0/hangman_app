def check(word, guess)
	if word == guess
		message = "Correct! The word was #{word}"
	elsif word.include? guess
		message = "The word includes #{guess}"
	else
		message = "No match for '#{guess}'"
	end
	message
end

=begin



	def check(guess)
		if guess.length == 1
			if @@word.include? "#{guess}"
				"The word contains #{guess}".
			else
				"The word does not include #{guess}"
			end
			@@guessed_letters << guess
		elsif guess.length > 1
			if guess == @@word
				"Correct! The word was: #{word}"
			else
				"Sorry, wrong answer. Keep trying."
			end
		else
			"Sorry, you didn't submit anything.  Try guessing a letter or a whole word."
		end
	end
end

=end