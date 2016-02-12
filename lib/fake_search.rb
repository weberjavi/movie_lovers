# lib/fake_search.rb

class FakeSearch
  attr_reader :movies
  def initialize
    @movies = []
  end
  def add_movie(fake_movie)
    @movies << fake_movie
  end
  def movies_with_poster
    @movies = @movies.delete_if{|movie| movie.poster == nil}
  end
  def nine_movies
    @movies.first(9)
  end
end