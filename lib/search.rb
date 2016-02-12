# lib/search.rb

require "pry"
require "imdb"


class Search
  def initialize
    @movies = []
  end
  def movies_with_poster(title)
    @movies = Imdb::Search.new(title).movies 
    id = 0
    poster =[]
    while poster.size < 9
       if @movies[id].poster != nil 
        poster << @movies[id]
      end
      id += 1
    end
    binding.pry
    poster
  end
end

prueba = Search.new
prueba.movies_with_poster("pokemon")

