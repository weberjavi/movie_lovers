# "lib/fake_movie"

class FakeMovie
  attr_reader :title, :id, :poster
  def initialize(title, id, poster)
    @title = title
    @id = id
    @poster = poster
  end
end