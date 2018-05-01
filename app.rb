# HANGMAN

require "sinatra"
require "sinatra/reloader" if development?

get '/' do
	word = "Secret"
	guess = params["guess"]
	erb :"index.html", locals: {word: word, guess: guess} 
end