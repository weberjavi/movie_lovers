require "sinatra"
require "sinatra/reloader" if development? # Comprueba si el servidor está en desarrollo y en cuanto haces un cambio se resetea el servidor
require "pry" if development?

require_relative "./lib/search.rb"


get "/" do
	erb(:home)
end

post "/quizz" do
	@film_name = params[:film_name]
	@movies_list = Search.new.nine_movies_with_poster(@film_name) 
	random = rand(0..9).round
  @random_year = @movies_list[random].year
	erb(:quizz)
end
