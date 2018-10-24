class Artist
  attr_accessor :name, :songs

  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)

  end

  def print_songs
    puts @@all
  end
end
