require "sinatra"
require "sinatra/reloader" if development?
require_relative "views/shared/hangman"

SECRET_WORD = "SECRET"
correct_guesses = []
incorrect_guesses = []

get '/' do
	guess = params["guess"].upcase
	message = message(SECRET_WORD, guess)
	check = check(SECRET_WORD, guess)

	if check == 0
		unless incorrect_guesses.include? guess
			incorrect_guesses << guess
		end
	end

	if check == 1
		unless correct_guesses.include? guess
			correct_guesses << guess
		end
	end

	erb :"index.html", locals: {
		message: message,  
		correct_guesses: correct_guesses, 
		incorrect_guesses: incorrect_guesses
	}
end