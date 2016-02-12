require "rspec"
require 'pry'
require_relative "../lib/fake_movie.rb"
require_relative "../lib/fake_search.rb"



RSpec.describe "FakeSearch" do

movie1 = FakeMovie.new("Porkis", "571", "poster.jpg")
movie2 = FakeMovie.new("Porkis2", "572", nil)
movie3 = FakeMovie.new("Porkis3", "573", nil)
movie4 = FakeMovie.new("Porkis4", "574", "poster2.jpg")
movie5 = FakeMovie.new("Porkis2", "572", nil)
movie6 = FakeMovie.new("Porkis3", "573", nil)
movie7 = FakeMovie.new("Porkis2", "572", nil)
movie8 = FakeMovie.new("Porkis3", "573", nil)
movie9 = FakeMovie.new("Porkis2", "572", nil)
movie10 = FakeMovie.new("Porkis3", "573", nil)

imdb = FakeSearch.new

imdb.add_movie(movie1)
imdb.add_movie(movie2)
imdb.add_movie(movie3)
imdb.add_movie(movie4)
imdb.add_movie(movie5)
imdb.add_movie(movie6)
imdb.add_movie(movie7)
imdb.add_movie(movie8)
imdb.add_movie(movie9)
imdb.add_movie(movie10)


  describe "@movies" do
    it "returns an array of objects" do
      expect(imdb.movies).to eq([movie1, movie2, movie3, movie4, movie5, movie6, movie7, movie8, movie9, movie10])
    end
  end

  describe "ibdm.movies_with_poster" do
    it "returns an array of objects" do
      expect(imdb.movies_with_poster).to eq([movie1, movie4])
    end
  end

  describe "ibdm.nine_movies" do
    it "returns an array with nine movies as much" do
      expect(imdb.nine_movies).to eq([movie1, movie4])
    end
  end

end

RSpec.describe "Search" do
  
end

