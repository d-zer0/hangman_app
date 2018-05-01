# HANGMAN

require "sinatra"
require "sinatra/reloader" if development?
require_relative "views/shared/hangman"

get '/' do
	guess = params["guess"]
	if defined?(hangman)
		hangman.check(guess)
	else
		hangman = Hangman.new
	end

	erb :"index.html", locals: {guess: guess, hangman: hangman} 
end