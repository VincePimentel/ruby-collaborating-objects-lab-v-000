class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def add_song(song)
    @songs << song
  end

  def save

  end
end
