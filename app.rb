require "sinatra"
require "sinatra/reloader" if development?
require_relative "views/shared/hangman"

SECRET_WORD = "SECRET"
guesses = []

get '/' do
	guess = params["guess"].upcase
	message = check(SECRET_WORD, guess)
	guesses << guess

	erb :"index.html", locals: {message: message, guesses: guesses}
end