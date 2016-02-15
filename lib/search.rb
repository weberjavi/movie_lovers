# lib/search.rb

require "pry"
require "imdb"


class Search
  attr_accessor :movies
  def initialize
    @movies = []
  end

  def nine_movies_with_poster(title)
    @movies = Imdb::Search.new(title).movies 
    id = 0
    nine_poster_movies =[]
    while nine_poster_movies.size < 9
       if @movies[id].poster != nil 
        nine_poster_movies << @movies[id]
      end
      id += 1
    end
    @movies = nine_poster_movies
  end

  # def years
  #   @movies.map do |movie|
  #     movie.year
  #   end
  # end

  
end


