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
    name_exists = self.all.detect { |artist| artist.name == name }
    if !name_exists
      name = self.new(name)
      name.save
    end
    name_exists
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end
