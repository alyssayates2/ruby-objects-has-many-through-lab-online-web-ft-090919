class Genre

  attr_reader :name, :genre
  attr_accessor :song

  def initialize(name)
    @name = name
  end

  def songs
    self.all 
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    Song.all.map do |song|
      song.artist
    end
  end
end
